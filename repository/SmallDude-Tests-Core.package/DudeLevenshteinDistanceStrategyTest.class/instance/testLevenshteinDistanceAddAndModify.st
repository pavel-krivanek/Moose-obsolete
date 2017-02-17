testing
testLevenshteinDistanceAddAndModify
	| aLevenshteinDistanceStrategy |
	aLevenshteinDistanceStrategy := DudeLevenshteinDistanceStrategy threshold: 2.
	self assert: (aLevenshteinDistanceStrategy levenshteinDistanceSource: 'ana' target: 'abba') equals: 2