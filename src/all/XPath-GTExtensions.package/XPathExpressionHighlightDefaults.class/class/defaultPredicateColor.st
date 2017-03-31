accessing
defaultPredicateColor
	^ defaultPredicateColor
		ifNil: [defaultPredicateColor := self textColorForShoutProperty: #blockStart]