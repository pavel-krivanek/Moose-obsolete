validating
validateAttributeDeclaration
	self elementIDValidator
		validateIDAttribute: self attribute
		forElement: self element.

	super validateAttributeDeclaration.