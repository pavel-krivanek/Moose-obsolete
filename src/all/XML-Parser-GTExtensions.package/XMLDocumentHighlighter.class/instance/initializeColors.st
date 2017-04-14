initialization
initializeColors
	super initializeColors.
	self
		xmlDeclarationColor: self defaults defaultXMLDeclarationColor;
		doctypeDeclarationColor: self defaults defaultDoctypeDeclarationColor;
		piColor: self defaults defaultPIColor;
		declarationColor: self defaults defaultDeclarationColor;
		tagColor: self defaults defaultTagColor;
		nameColor: self defaults defaultNameColor;
		quotedStringNameColor: self defaults defaultQuotedStringNameColor;
		quotedStringColor: self defaults defaultQuotedStringColor;
		entityReferenceColor: self defaults defaultEntityReferenceColor;
		commentColor: self defaults defaultCommentColor;
		cdataColor: self defaults defaultCDataColor.