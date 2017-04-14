accessing
defaultDoctypeDeclarationColor
	^ defaultDoctypeDeclarationColor
		ifNil: [
			defaultDoctypeDeclarationColor :=
				self textColorForShoutProperty: #super]