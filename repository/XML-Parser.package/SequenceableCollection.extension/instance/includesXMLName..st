*XML-Parser
includesXMLName: aName
	"optimized with to:do:"
	1 to: self size do: [:i |
		(aName isXMLQualifiedOrLocalName: (self at: i))
			ifTrue: [^ true]].
	^ false.