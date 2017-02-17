public
frequencyMin: numMin max: numMax amountOfIntervals: aNbOfIntervals
	| tmp result bucketFor |
	
	self sorted ifFalse: [self sortObjectsAndDefineNumbers].
	
	self numberMax: numMax.
	self numberMin: numMin.
	self nbOfIntervals: aNbOfIntervals.
	
	self interval: (self numberMax - self numberMin) / (self nbOfIntervals floor).

	bucketFor := self strategyBlock.
	tmp := self objects copy.
	result := (1 to: self nbOfIntervals) collect: [ :i | OrderedCollection new ].
	tmp do: [ :obj | (result at: (bucketFor value: obj) asInteger) add: obj ].
	^ result asArray