testing
testMin
	| aLevenshteinDistanceStrategy |
	aLevenshteinDistanceStrategy := DudeLevenshteinDistanceStrategy threshold: 2.
	self assert: (aLevenshteinDistanceStrategy minFirst: 3 second: 2 third: -1) equals: -1.
	self assert: (aLevenshteinDistanceStrategy minFirst: -3 second: 2 third: 1) equals: -3.
	self assert: (aLevenshteinDistanceStrategy minFirst: 3 second: -2 third: 1) equals: -2