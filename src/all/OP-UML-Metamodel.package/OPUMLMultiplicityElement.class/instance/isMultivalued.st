operations
isMultivalued
	"The query isMultivalued() checks whether this multiplicity has an upper bound greater than one."
	
	"pre: {OCL} upperBound()->notEmpty()"
	"{OCL} result = (upperBound() > 1)"
	
	^ self upperBound = '*' or: [ self upperBound > 1 ]
