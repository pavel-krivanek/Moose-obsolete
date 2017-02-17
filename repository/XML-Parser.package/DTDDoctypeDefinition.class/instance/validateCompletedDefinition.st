validation
validateCompletedDefinition
	self hasUnparsedEntities
		ifTrue: [self unparsedEntityValidator validateUnparsedEntityDeclarations].
	self hasNotationAttributeValidators
		ifTrue: [self unparsedEntityValidator validateNotationAttributeDeclarationDefaults].