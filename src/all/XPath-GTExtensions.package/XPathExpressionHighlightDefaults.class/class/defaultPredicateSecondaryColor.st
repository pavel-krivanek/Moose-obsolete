accessing
defaultPredicateSecondaryColor
	^ defaultPredicateSecondaryColor
		ifNil: [
			defaultPredicateSecondaryColor :=
				self textColorForShoutProperty: #blockStart2]