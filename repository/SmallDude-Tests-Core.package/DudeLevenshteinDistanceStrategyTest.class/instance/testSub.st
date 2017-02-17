testing
testSub
	| aLevenshteinDistanceStrategy |
	aLevenshteinDistanceStrategy := DudeLevenshteinDistanceStrategy threshold: 2.
	self
		assert:
			(aLevenshteinDistanceStrategy
				subFirstString: 'alsd'
				firstPos: 2
				secondString: 'ldsf'
				secondPos: 1)
		equals: 0.
	self
		assert:
			(aLevenshteinDistanceStrategy
				subFirstString: 'alsd'
				firstPos: 2
				secondString: 'ldsf'
				secondPos: 2)
		equals: 1.
	self
		assert:
			(aLevenshteinDistanceStrategy
				subFirstString: 'alsd'
				firstPos: 2
				secondString: 'ldlf'
				secondPos: 3)
		equals: 0.
	self
		assert:
			(aLevenshteinDistanceStrategy
				subFirstString: 'alsd'
				firstPos: 2
				secondString: 'adsf'
				secondPos: 1)
		equals: 1