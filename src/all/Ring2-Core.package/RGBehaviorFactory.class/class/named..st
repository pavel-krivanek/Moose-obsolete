instance creation
named: aString

	^ (RGBehavior named: aString behaviorStrategy: self newStrategy)
		yourself