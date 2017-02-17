properties
timeWarpingSimilarityAsComparedWith: aHistory relatedToVersionProperty: aVersionProperty
	"returns the Dynamic Time Warping distance of the time series formed by collecting aVersionProperty from both the current history and aHistory"
	
	| vector1 vector2 computer |
	vector1 := self versions
		collect: [:each | each propertyNamed: aVersionProperty].
	vector2 := aHistory versions
		collect: [:each | each propertyNamed: aVersionProperty].
	computer := (MalTimeWarpingEngine new)
		vectorA: vector1;
		vectorB: vector2;
		distanceBlock: [:a :b | (a - b) * (a - b)];
		yourself.
	^computer getCost