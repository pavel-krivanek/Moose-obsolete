comparing
intersectLine: aLine
	self logCr: (self flatCollect: [ :each | aLine intersect: each ]).
	^ (self flatCollect: [ :each | aLine intersect: each ]) asArray