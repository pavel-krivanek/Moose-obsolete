*XML-Parser
includesXMLName: aName
	"optimized with do: instead of anySatisfy:"
	self do: [:each |
		(aName isXMLQualifiedOrLocalName: each)
			ifTrue: [^ true]].
	^ false.