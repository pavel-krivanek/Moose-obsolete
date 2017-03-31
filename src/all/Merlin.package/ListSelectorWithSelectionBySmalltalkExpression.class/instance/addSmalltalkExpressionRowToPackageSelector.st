initialize-release
addSmalltalkExpressionRowToPackageSelector
	self 
		addRowWithAll: { 
				((self newLabel: 'select: [ :each |') disable).
				(self newTextEntry).
				((self newLabel: ']') disable).
				(self newValidateButton)
			 }
		withTitle: 'Select packages with a Smalltalk condition'