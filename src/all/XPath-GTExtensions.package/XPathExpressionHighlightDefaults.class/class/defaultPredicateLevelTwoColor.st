accessing
defaultPredicateLevelTwoColor
	^ defaultPredicateLevelTwoColor
		ifNil: [
			defaultPredicateLevelTwoColor :=
				self textColorForShoutProperty: #blockStart2]