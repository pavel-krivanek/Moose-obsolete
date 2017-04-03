initialization
initializeColors
	super initializeColors.
	self
		xmlDeclarationColor: self defaults defaultSecondaryMarkupColor;
		doctypeDeclarationColor: self defaults defaultSecondaryMarkupColor;
		piColor: self defaults defaultSecondaryMarkupColor;
		declarationColor: self defaults defaultPrimaryMarkupColor;
		tagColor: self defaults defaultPrimaryMarkupColor;
		quotedStringColor: self defaults defaultQuotedStringColor;
		entityReferenceColor: self defaults defaultEntityReferenceColor;
		commentColor: self defaults defaultCommentColor;
		cdataColor: self defaults defaultCDataColor.