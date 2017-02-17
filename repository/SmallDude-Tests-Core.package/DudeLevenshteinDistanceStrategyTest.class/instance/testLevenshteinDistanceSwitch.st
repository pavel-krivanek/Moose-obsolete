testing
testLevenshteinDistanceSwitch
	| aLevenshteinDistanceStrategy |
	aLevenshteinDistanceStrategy := DudeLevenshteinDistanceStrategy threshold: 2.	"	self halt."
	self assert: (aLevenshteinDistanceStrategy levenshteinDistanceSource: 'abc' target: 'acb') equals: 2