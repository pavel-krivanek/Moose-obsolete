accessing
defaultPredicateTertiaryColor
	^ defaultPredicateTertiaryColor
		ifNil: [
			defaultPredicateTertiaryColor :=
				self textColorForShoutProperty: #blockStart3]