private
validatePrefix: aPrefix beforeMappingTo: aURI
	aPrefix size > 0 "optimization"
		ifTrue: ["non-default namespace"
			aPrefix = 'xml' "cannot be remapped"
				ifTrue: [
					aURI = self xmlNamespaceURI
						ifFalse: [self errorCannotRemapXMLPrefix].
					^ self].
			aPrefix = 'xmlns' "cannot be mapped, even to the same URI"
				ifTrue: [self errorCannotMapXMLNSPrefix].
			(aPrefix indexOf: $:) > 0 
				ifTrue: [self errorInvalidPrefix: aPrefix].
			"non-default namespaces cannot be mapped to empty uris, even
			to shadow an inherited namesapce"
			aURI size > 0
				ifFalse: [self errorCannotMapPrefixToEmptyURI]].

	"these URIs cannot be aliased, even by the default namespace"
	(aURI = self xmlNamespaceURI
		or: [aURI = self xmlnsNamespaceURI])
		ifTrue: [self errorCannotAliasXMLOrXMLNSWithPrefix: aPrefix].