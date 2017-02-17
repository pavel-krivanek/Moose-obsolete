handling
handleEndTag: anElement
	"performance critical method"
	| prefix currentScope |

	prefix := anElement xmlPrefixBeforeLocalName.
	self saxHandler 
		endElement: anElement
		prefix: prefix
		uri:
			(self usesNamespaces
				ifTrue: [
					(currentScope := self scopeAllocator exitScope)
						resolvePrefix: prefix]
				ifFalse: [''])
		localName: (anElement xmlLocalNameAfterPrefix: prefix).

	currentScope ifNotNil: [
		currentScope hasNamespaces
			ifTrue: [self undeclareNamespacesInScope: currentScope]].
	self isValidating
		ifTrue: [self validator validateEndTag: anElement].