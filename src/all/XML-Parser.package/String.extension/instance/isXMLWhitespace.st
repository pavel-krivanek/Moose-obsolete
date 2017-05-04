*XML-Parser
isXMLWhitespace
	"optimized"
	self size == 0
		ifTrue: [^ false].
	1 to: self size do: [:i |
		(self at: i) isXMLWhitespace
			ifFalse: [^ false]].
	^ true.