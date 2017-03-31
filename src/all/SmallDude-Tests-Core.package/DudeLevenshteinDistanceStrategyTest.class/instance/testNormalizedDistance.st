testing
testNormalizedDistance
	| aLevenshteinDistanceStrategy |
	aLevenshteinDistanceStrategy := DudeLevenshteinDistanceStrategy threshold: 2.
	self assert: (aLevenshteinDistanceStrategy normalizedDistanceSource: 'abcd' target: 'acbd') equals: 0.5