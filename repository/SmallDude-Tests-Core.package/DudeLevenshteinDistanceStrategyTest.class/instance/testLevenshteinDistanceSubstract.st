testing
testLevenshteinDistanceSubstract
	| aLevenshteinDistanceStrategy |
	aLevenshteinDistanceStrategy := DudeLevenshteinDistanceStrategy threshold: 2.
	self assert: (aLevenshteinDistanceStrategy levenshteinDistanceSource: 'anca' target: 'ana') equals: 1