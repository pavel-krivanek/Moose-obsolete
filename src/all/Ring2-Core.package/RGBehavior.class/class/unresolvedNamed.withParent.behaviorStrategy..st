as yet unclassified
unresolvedNamed: aName withParent: anRGObject behaviorStrategy: anRGBehaviorStrategy
	
	| aBehavior |

	aBehavior := self basicNew
		behaviorStrategy: anRGBehaviorStrategy;
		parent: anRGObject;
		initializeUnresolved.
	anRGBehaviorStrategy initializeUnresolved.
	^ aBehavior
		pvtName: aName asSymbol;
		yourself		
