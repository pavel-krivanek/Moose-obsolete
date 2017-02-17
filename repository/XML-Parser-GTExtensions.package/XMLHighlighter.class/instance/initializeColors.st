initialization
initializeColors
	self
		defaultColor: self defaults defaultDefaultColor;
		xmlDeclarationColor: self defaults defaultSecondaryMarkupColor;
		doctypeDeclarationColor: self defaults defaultSecondaryMarkupColor;
		piColor: self defaults defaultSecondaryMarkupColor;
		declarationColor: self defaults defaultPrimaryMarkupColor;
		tagColor: self defaults defaultPrimaryMarkupColor;
		quotedStringValueColor: self defaults defaultQuotedStringValueColor;
		entityReferenceColor: self defaults defaultEntityReferenceColor;
		commentColor: self defaults defaultCommentColor;
		cdataColor: self defaults defaultCDataColor