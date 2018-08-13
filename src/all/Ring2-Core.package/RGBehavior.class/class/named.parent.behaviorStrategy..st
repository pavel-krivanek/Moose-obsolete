as yet unclassified
named: aName parent: anRGObject behaviorStrategy: anRGBehaviorStrategy
	
	| aBehavior |

	aBehavior := self basicNew
		behaviorStrategy: anRGBehaviorStrategy;
		parent: anRGObject;
		initialize.
	anRGBehaviorStrategy initialize.
	^ aBehavior
		pvtName: aName asSymbol;
		yourself		
