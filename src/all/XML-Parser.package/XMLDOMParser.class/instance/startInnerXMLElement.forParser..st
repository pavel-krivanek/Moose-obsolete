private
startInnerXMLElement: anElement forParser: aParser
	aParser driver currentElement: anElement name.
	anElement hasNamespaces
		ifTrue: [aParser driver currentScope: anElement namespaceScope].