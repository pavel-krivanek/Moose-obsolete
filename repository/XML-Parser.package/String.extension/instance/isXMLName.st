*XML-Parser
isXMLName
	"optimized"
	self size > 0
		ifFalse: [^ false].
	(self at: 1) isXMLNameStartChar
		ifFalse: [^ false].
	2 to: self size do: [:i |
		(self at: i) isXMLNameChar
			ifFalse: [^ false]].
	^ true.