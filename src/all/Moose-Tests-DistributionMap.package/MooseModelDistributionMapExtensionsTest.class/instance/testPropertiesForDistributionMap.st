tests
testPropertiesForDistributionMap
	| model |
	model := self model.
	self assert: (model resultOfProperty: #numberOfLinesOfCode appliedTo: model allClasses first class) isNumber.
	self assert: (model resultOfProperty: #numberOfLinesOfCode appliedTo: model allClasses first) isNil.
	
	self assert: (model classConcernedByProperty: #numberOfLinesOfCode appliedTo: FAMIXClass) isNil.
