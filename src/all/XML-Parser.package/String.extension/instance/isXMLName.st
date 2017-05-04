*XML-Parser
isXMLName
	"optimized"
	self size == 0
		ifTrue: [^ false].
	(self at: 1) isXMLNameStartChar
		ifFalse: [^ false].
	2 to: self size do: [:i |
		(self at: i) isXMLNameChar
			ifFalse: [^ false]].
	^ true.