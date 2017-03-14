accessing - morphs
smalltalkExpressionSelectorMorphNamed: aString

	^ self newRowWith: {
		self newGroupBoxNamed: aString with:   
			(self newRowWith: {  
				((self newLabel: 'select: [ :each |') disable).
				(self textFieldMorph setText:  '''*'' match: each '; yourself).
				((self newLabel: ']') disable).
				(self validateButtonMorph)}).
			(self newColumnWith: {   }).
			(self newColumnWith: {   })
	}