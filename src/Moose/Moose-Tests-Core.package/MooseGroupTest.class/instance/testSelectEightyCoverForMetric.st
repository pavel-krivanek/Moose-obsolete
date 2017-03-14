tests
testSelectEightyCoverForMetric
	| top remaining |
	top := self model allMethods selectEightyCoverForMetric: #numberOfLinesOfCode.
	self assert: (top notEmpty)