*XML-Parser
qualifyWithXMLPrefix: aPrefix
	"optimized"
	aPrefix size > 0
		ifTrue: [^ (aPrefix copyWith: $:), self]
		ifFalse: [^ self]