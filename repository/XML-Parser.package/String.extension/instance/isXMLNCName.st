*XML-Parser
isXMLNCName
	"optimized"
	self size > 0
		ifFalse: [^ false].
	(self at: 1) isXMLNCNameStartChar
		ifFalse: [^ false].
	2 to: self size do: [:i |
		(self at: i) isXMLNCNameChar
			ifFalse: [^ false]].
	^ true.