tests
testBasic

	| data |
	data := RTMultipleData new.
	self assert: data numberOfPoints equals: 0.
	self assert: data numberOfMetrics equals: 0.