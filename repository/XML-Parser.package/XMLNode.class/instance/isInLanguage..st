testing
isInLanguage: aLanguage
	"Returns true if one of the ancestor elements of the receiver has an xml:lang
	attribute, and if the value is an IETF language tag that matches aLanguage
	or if its first ('-' separated) subtag matches aLanguage."

	^ self hasParent
		and: [self parent isInLanguage: aLanguage]