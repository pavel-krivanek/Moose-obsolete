testing - statistics
testCorrelation

	| classHistories v classHistoryA |
	classHistories := testData simpleHistory allClassHistories.
	classHistoryA := classHistories entityNamed: #'aNamespace::ClassC'.
	self assert: ((v := classHistoryA correlationOf: #numberOfLinesOfCode and: #numberOfMethods) closeTo: 0.9948).
	
	self assert: ((classHistoryA correlationOf: #numberOfMethods and: #numberOfLinesOfCode) closeTo: v).
	
	self assert: ((classHistoryA correlationOf: #numberOfMethods and: #numberOfMethods) closeTo: 1).
	
	self assert: ((classHistoryA correlationOf: #numberOfMethods and: [ :c | c numberOfMethods negated ]) closeTo: -1)