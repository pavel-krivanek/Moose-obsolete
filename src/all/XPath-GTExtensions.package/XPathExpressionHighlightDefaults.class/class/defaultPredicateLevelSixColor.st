accessing
defaultPredicateLevelSixColor
	^ defaultPredicateLevelSixColor
		ifNil: [
			defaultPredicateLevelSixColor :=
				self textColorForShoutProperty: #blockStart6]