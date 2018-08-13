as yet unclassified
unresolvedWithBehaviorStrategy: anRGBehaviorStrategy

	| aBehavior |
	
	aBehavior := self basicNew
		behaviorStrategy: anRGBehaviorStrategy;
		initializeUnresolved.
	anRGBehaviorStrategy initializeUnresolved.
	^ aBehavior
