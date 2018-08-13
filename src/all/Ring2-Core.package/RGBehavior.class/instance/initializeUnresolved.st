initialization
initializeUnresolved

	super initializeUnresolved.

	superclass := self. "will be set later"
	localMethods := self unresolvedValue: self defaultLocalMethods.
	protocols := self unresolvedValue: self defaultProtocols.
	traitComposition := self unresolvedValue: self defaultTraitComposition.
	tagsForMethods := self unresolvedValue: self defaultTagsForMethods.	
	tags := self unresolvedValue: self defaultTags.	
