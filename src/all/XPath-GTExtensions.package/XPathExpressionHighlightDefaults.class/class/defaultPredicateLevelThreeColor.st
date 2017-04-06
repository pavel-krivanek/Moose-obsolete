accessing
defaultPredicateLevelThreeColor
	^ defaultPredicateLevelThreeColor
		ifNil: [
			defaultPredicateLevelThreeColor :=
				self textColorForShoutProperty: #blockStart3]