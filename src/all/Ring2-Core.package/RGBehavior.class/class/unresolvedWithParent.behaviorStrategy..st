as yet unclassified
unresolvedWithParent: anRGObject behaviorStrategy: anRGBehaviorStrategy
	
	| aBehavior |

	aBehavior := self basicNew
		behaviorStrategy: anRGBehaviorStrategy;
		parent: anRGObject;
		initializeUnresolved.
	anRGBehaviorStrategy initializeUnresolved.
	^ aBehavior
