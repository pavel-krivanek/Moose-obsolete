*Moose-DistributionMap
resultOfProperty: aSelectorOrAblock appliedTo: aClass

	| concernedEntities  |
	concernedEntities := self allWithSmalltalkType: aClass.
	concernedEntities isEmpty ifFalse: [
		|result|
		result := concernedEntities detect: [:each | 
			|propertyResult|
			propertyResult := (aSelectorOrAblock rtValue: each).
			propertyResult isNil not] ifNone: [nil].
	
		result ifNotNil: [
			|propertyResult|
			propertyResult := aSelectorOrAblock rtValue: result.
			^ propertyResult 
			].	
		].
		
	^ nil
	