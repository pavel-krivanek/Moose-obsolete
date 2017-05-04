*XML-Parser
isXMLNSAttributeName
	"optimized"
	self size >= 5
		ifFalse: [^ false].
	(self at: 1) == $x
		ifFalse: [^ false].
	(self at: 2) == $m
		ifFalse: [^ false].
	(self at: 3) == $l
		ifFalse: [^ false].
	(self at: 4) == $n
		ifFalse: [^ false].
	(self at: 5) == $s
		ifFalse: [^ false].
	self size == 5
		ifTrue: [^ true].
	^ (self at: 6) == $:.