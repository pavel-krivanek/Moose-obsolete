handling
handleStartTag: anElement attributes: anAttributeDictionary
	"performance critical method"
	| prefix totalAttributes namespaceURI currentScope |

	prefix := anElement xmlPrefixBeforeLocalName.
	totalAttributes := anAttributeDictionary size.
	self isValidating
		ifTrue: [
			self elementNester totalOpenElements > 1
				ifFalse: [self validateRootElement: anElement].
			self validator
				validateStartTag: anElement
				attributes: anAttributeDictionary]
		ifFalse: [
			self doctypeDefinition
				processStartTag: anElement
				attributes: anAttributeDictionary].
	"validation and processing can add attributes"
	anAttributeDictionary size > totalAttributes
		ifTrue: [
			self
				checkForReservedAttributesIn: anAttributeDictionary
				afterIndex: totalAttributes.
			totalAttributes := anAttributeDictionary size].
	self usesNamespaces
		ifTrue: [
			anAttributeDictionary setNamespaceScope:
				(currentScope := self scopeAllocator enterScope).
			self hasUnhandledReservedAttributes
				ifTrue: [
					(self extractNamespacesFromAttributes: anAttributeDictionary)
						ifNotNil: [:namespaces |
							self
								declareNamespaces: namespaces
								inScope: currentScope.
							totalAttributes := anAttributeDictionary size]].
			self saxHandler startScope: currentScope.
			namespaceURI :=
				currentScope
					validateAndResolvePrefix: prefix
					ofElement: anElement.
			totalAttributes > 0
				ifTrue: [
					"anAttributeDictionary is an XMLAttributeDictionary, which
					is an OrderPreservingStringDictionary, so use its internal
					#orderedKeys over #keys for speed"
					currentScope
						validatePrefixesOfAttributes: anAttributeDictionary orderedKeys
						from: 1
						to: totalAttributes]].
	self hasUnhandledReservedAttributes
		ifTrue: [self handleReservedAttributes: anAttributeDictionary].

	self saxHandler
		startElement: anElement
		prefix: prefix
		uri: (namespaceURI ifNil: [''])
		localName: (anElement xmlLocalNameAfterPrefix: prefix)
		attributes: anAttributeDictionary.