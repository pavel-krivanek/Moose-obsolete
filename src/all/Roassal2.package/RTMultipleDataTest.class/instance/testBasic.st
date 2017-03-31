tests
testBasic

	| data |
	data := RTVerticalMultipleData new.
	self assert: data numberOfPoints equals: 0.
	self assert: data numberOfMetrics equals: 0.