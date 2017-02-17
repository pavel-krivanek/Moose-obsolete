accessing
isBookmarked
	^ self propertyNamed: #isBookmarked ifNil: [false]