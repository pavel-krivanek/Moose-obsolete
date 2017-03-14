testing
isInLanguage: aLanguage
	"Returns true if the receiver or one of its ancestors has an xml:lang
	attribute, and if the value is an IETF language tag that matches aLanguage
	or if its first ('-' separated) subtag matches aLanguage."

	^ (self
		attributeNodeAt: 'xml:lang'
		ifAbsent: [
			^ self hasParent
				and: [self parent isInLanguage: aLanguage]])
			hasLanguage: aLanguage