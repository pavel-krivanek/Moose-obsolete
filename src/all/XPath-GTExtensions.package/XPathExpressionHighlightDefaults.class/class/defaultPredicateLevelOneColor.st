accessing
defaultPredicateLevelOneColor
	^ defaultPredicateLevelOneColor
		ifNil: [
			defaultPredicateLevelOneColor :=
				self textColorForShoutProperty: #blockStart1]