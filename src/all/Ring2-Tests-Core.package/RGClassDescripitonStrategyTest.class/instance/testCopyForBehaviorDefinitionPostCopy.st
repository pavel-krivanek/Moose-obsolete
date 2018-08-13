tests
testCopyForBehaviorDefinitionPostCopy

	| anRGBehavior copy |
	
	anRGBehavior := RGBehavior newClass.
	copy := anRGBehavior copyForBehaviorDefinition.
	self deny: anRGBehavior behaviorStrategy == copy behaviorStrategy.	
	self deny: (anRGBehavior behaviorStrategy instVarNamed: #layout) == (copy behaviorStrategy instVarNamed: #layout).
"TODO: check this failing case:"
"	self deny: anRGBehavior behaviorStrategy layout == copy behaviorStrategy layout."