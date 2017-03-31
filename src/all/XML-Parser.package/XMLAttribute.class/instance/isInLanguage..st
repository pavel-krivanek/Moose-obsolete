testing
isInLanguage: aLanguage
	"Returns true if the receiver is an xml:lang attribute or if its element
	or an ancestor element has an xml:lang attribute, and if the value is an IETF
	language tag that matches aLanguage or if its first ('-' separated) subtag
	matches aLanguage."

	self name = 'xml:lang'
		ifTrue: [^ self hasLanguage: aLanguage]
		ifFalse: [^ super isInLanguage: aLanguage]