testing
testNotSimilar 
	 
	| aLevenshteinDistanceStrategy | 
	aLevenshteinDistanceStrategy := DudeLevenshteinDistanceStrategy threshold: 
			0.3. 
	self 
		assert: 
			(aLevenshteinDistanceStrategy similarSource: 'abcd' target: 'acbd') not