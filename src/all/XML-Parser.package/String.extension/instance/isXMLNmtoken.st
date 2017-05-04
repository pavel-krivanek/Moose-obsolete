*XML-Parser
isXMLNmtoken
	"optimized"
	self size == 0
		ifTrue: [^ false].
	1 to: self size do: [:i |
		(self at: i) isXMLNameChar
			ifFalse: [^ false]].
	^ true.