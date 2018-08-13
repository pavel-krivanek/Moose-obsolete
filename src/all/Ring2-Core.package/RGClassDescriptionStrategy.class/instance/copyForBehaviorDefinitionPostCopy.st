copying
copyForBehaviorDefinitionPostCopy

	super copyForBehaviorDefinitionPostCopy.
	layout := self layout copyForBehaviorDefinition.
	layout parent: self owner.
