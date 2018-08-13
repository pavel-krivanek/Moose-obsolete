copying
copyForBehaviorDefinitionPostCopy

	super copyForBehaviorDefinitionPostCopy.
	
	superclass := self superclass shallowCopy. "we need the superclass name"
	traitComposition := self traitComposition copyForBehaviorDefinition.
	tagsForMethods := self tagsForMethods copy asSet.
	tags := self tags copy asSet.
	
	behaviorStrategy := behaviorStrategy copyForBehaviorDefinitionWithOwner: self
