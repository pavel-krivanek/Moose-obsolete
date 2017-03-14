as yet unclassified
variableNamed: aVarName
	"Maybe mooseName should be used instead"
	^ self detect: [:var | var name = aVarName ]