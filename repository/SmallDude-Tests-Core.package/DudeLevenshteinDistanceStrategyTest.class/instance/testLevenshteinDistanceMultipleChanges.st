testing
testLevenshteinDistanceMultipleChanges
	| aLevenshteinDistanceStrategy |
	aLevenshteinDistanceStrategy := DudeLevenshteinDistanceStrategy threshold: 2.
	self assert: (aLevenshteinDistanceStrategy levenshteinDistanceSource: 'nloev' target: 'novel') equals: 3