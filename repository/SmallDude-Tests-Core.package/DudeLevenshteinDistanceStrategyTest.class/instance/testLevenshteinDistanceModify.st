testing
testLevenshteinDistanceModify
	| aLevenshteinDistanceStrategy |
	aLevenshteinDistanceStrategy := DudeLevenshteinDistanceStrategy threshold: 2.
	self assert: (aLevenshteinDistanceStrategy levenshteinDistanceSource: 'ata' target: 'ana') equals: 1