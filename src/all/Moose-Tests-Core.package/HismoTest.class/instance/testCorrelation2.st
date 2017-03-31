testing - statistics
testCorrelation2

	| packageHistories |
	packageHistories := testData simpleHistory allPackageHistories.
	
	"Raise en error since the number of classes and methods are 0"
	self 
		should: [(packageHistories at: 1) correlationOf: #numberOfClasses and: #numberOfMethods] 
		raise: Error.