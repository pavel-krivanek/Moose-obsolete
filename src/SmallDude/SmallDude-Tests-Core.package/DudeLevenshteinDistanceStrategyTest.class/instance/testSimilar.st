testing
testSimilar 
	 
	| aLevenshteinDistanceStrategy | 
	aLevenshteinDistanceStrategy := DudeLevenshteinDistanceStrategy threshold: 
			2. 
	self 
		assert: 
			(aLevenshteinDistanceStrategy similarSource: 'abcd' target: 'acbd')