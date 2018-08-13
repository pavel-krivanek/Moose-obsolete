as yet unclassified
unnamedWithBehaviorStrategy: anRGBehaviorStrategy

	| aBehavior |
	
	aBehavior := self basicNew
		behaviorStrategy: anRGBehaviorStrategy;
		initialize.
	anRGBehaviorStrategy initialize.
	^ aBehavior
