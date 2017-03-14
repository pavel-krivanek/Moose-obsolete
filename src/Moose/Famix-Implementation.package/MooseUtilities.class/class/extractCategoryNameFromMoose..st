encoding extraction
extractCategoryNameFromMoose: aString
	"returns the first part of a compound string. In Moose the variable name are composed this way"

	"(self extractCategoryNameFromMoose: (self browserCategoryToSourceAnchor: 'accessing')) = 'accessing'"

	| tag |
	tag := self browserCategoryTag.
	aString
		findString: tag
		startingAt: 1.
	^aString
		copyFrom: tag size + 1
		to: aString size