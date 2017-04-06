accessing
defaultPredicateLevelFourColor
	^ defaultPredicateLevelFourColor
		ifNil: [
			defaultPredicateLevelFourColor :=
				self textColorForShoutProperty: #blockStart4]