accessing
defaultPredicatePrimaryColor
	^ defaultPredicatePrimaryColor
		ifNil: [
			defaultPredicatePrimaryColor :=
				self textColorForShoutProperty: #blockStart1]