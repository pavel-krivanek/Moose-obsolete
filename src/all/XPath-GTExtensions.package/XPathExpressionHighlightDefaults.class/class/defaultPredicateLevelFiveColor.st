accessing
defaultPredicateLevelFiveColor
	^ defaultPredicateLevelFiveColor
		ifNil: [
			defaultPredicateLevelFiveColor :=
				self textColorForShoutProperty: #blockStart5]