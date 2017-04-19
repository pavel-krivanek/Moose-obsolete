initialization
initializeColorsWithDefaults: aDefaults
	super initializeColorsWithDefaults: aDefaults.

	self
		xmlDeclarationColor: aDefaults xmlDeclarationColor;
		doctypeDeclarationColor: aDefaults doctypeDeclarationColor;
		piColor: aDefaults piColor;
		declarationColor: aDefaults declarationColor;
		tagColor: aDefaults tagColor;
		nameColor: aDefaults nameColor;
		quotedStringNameColor: aDefaults quotedStringNameColor;
		quotedStringColor: aDefaults quotedStringColor;
		entityReferenceColor: aDefaults entityReferenceColor;
		commentColor: aDefaults commentColor;
		cdataColor: aDefaults cdataColor.