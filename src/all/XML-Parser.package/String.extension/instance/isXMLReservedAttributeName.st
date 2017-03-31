*XML-Parser
isXMLReservedAttributeName
	"optimized"
	self size > 3
		ifFalse: [^ false].
	(self at: 1) == $x
		ifFalse: [^ false].
	(self at: 2) == $m
		ifFalse: [^ false].
	^ (self at: 3) == $l.