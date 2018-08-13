initialization
initialize

	super initialize.
	
	"use unresolved value for superclass to avoid infinite recursion. It needs to be set later"
	superclass := RGUnresolvedValue recursive.
	localMethods := self unresolvedValue: self defaultLocalMethods.
	protocols := self unresolvedValue: self defaultProtocols.
	traitComposition := self unresolvedValue: self defaultTraitComposition.
	tagsForMethods := self unresolvedValue: self defaultTagsForMethods.	
	tags := self unresolvedValue: self defaultTags.	
