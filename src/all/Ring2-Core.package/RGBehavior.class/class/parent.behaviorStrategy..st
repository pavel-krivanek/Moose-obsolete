as yet unclassified
parent: anRGObject behaviorStrategy: anRGBehaviorStrategy
	
	| aBehavior |

	aBehavior := self basicNew
		behaviorStrategy: anRGBehaviorStrategy;
		parent: anRGObject;
		initialize.
	anRGBehaviorStrategy initialize.
	^ aBehavior
