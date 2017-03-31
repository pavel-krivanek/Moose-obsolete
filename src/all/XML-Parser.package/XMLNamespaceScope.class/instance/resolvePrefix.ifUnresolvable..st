resolving
resolvePrefix: aPrefix ifUnresolvable: aBlock
	"Resolves the namespace URI of aPrefix (the defualt namespace URI if aPrefix
	is empty), including the predefined 'xml' and 'xmlns' prefixes. Returns the
	value of aBlock if aPrefix is unresolvable."

	(aPrefix size > 0 "optimization"
		and: [(aPrefix at: 1) == $x]) "optimization"
		ifTrue: [
			aPrefix = 'xml'
				ifTrue: [^ self xmlNamespaceURI].
			aPrefix = 'xmlns'
				ifTrue: [^ self xmlnsNamespaceURI]].

	^ self
		prefixMappingAt: aPrefix
		ifAbsent: aBlock.