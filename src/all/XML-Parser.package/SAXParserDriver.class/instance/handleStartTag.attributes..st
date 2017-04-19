handling
handleStartTag: anElement attributes: aDictionary
	"performance critical method"
	| prefix totalAttributes namespaceURI currentScope |

	prefix := anElement xmlPrefixBeforeLocalName.
	totalAttributes := aDictionary size.
	self isValidating
		ifTrue: [
			self elementNester totalOpenElements > 1
				ifFalse: [self validateRootElement: anElement].
			self validator
				validateStartTag: anElement
				attributes: aDictionary]
		ifFalse: [
			self doctypeDefinition
				processStartTag: anElement
				attributes: aDictionary].
	"validation and processing can add attributes"
	aDictionary size > totalAttributes
		ifTrue: [
			self
				checkForReservedAttributesIn: aDictionary
				afterIndex: totalAttributes.
			totalAttributes := aDictionary size].
	self usesNamespaces
		ifTrue: [
			currentScope := self scopeAllocator enterScope.
			self hasUnhandledReservedAttributes
				ifTrue: [
					(self extractNamespacesFromAttributes: aDictionary)
						ifNotNil: [:namespaces |
							self
								declareNamespaces: namespaces
								inScope: currentScope.
							totalAttributes := aDictionary size]].
			namespaceURI :=
				currentScope
					validateAndResolvePrefix: prefix
					ofElement: anElement.
			totalAttributes > 0
				ifTrue: [
					"aDictionary is an OrderPreservingStringDictionary, so use
					its internal #orderedKeys over #keys for speed"
					currentScope
						validatePrefixesOfAttributes: aDictionary orderedKeys
						from: 1
						to: totalAttributes]].
	self hasUnhandledReservedAttributes
		ifTrue: [self handleReservedAttributes: aDictionary].

	self saxHandler
		startElement: anElement
		prefix: prefix
		uri: (namespaceURI ifNil: [''])
		localName: (anElement xmlLocalNameAfterPrefix: prefix)
		attributes: aDictionary.

	currentScope
		ifNotNil: [self saxHandler currentScope: currentScope].