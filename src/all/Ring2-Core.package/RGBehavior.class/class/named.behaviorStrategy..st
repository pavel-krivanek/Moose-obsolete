as yet unclassified
named: aName behaviorStrategy: anRGBehaviorStrategy

	| aBehavior |
	
	aBehavior := self basicNew
		behaviorStrategy: anRGBehaviorStrategy;
		initialize.
	anRGBehaviorStrategy initialize.
	^ aBehavior
		pvtName: aName asSymbol;
		yourself		
