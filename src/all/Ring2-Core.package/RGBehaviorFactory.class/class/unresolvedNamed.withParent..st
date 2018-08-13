instance creation
unresolvedNamed: aString withParent: anRGDefintion

	^ RGBehavior unresolvedNamed: aString withParent: anRGDefintion behaviorStrategy: (self newStrategyFor: anRGDefintion environment)