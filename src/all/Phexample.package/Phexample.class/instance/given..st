dependencies
given: anExampleName 
	self should respondTo: anExampleName.
	(thisContext sender method selector = anExampleName) should be: false.
	^ [ Given current consumeReturnValueAt: (self class selector: anExampleName) ] 
		on:  TestResult failure , TestResult error
		do: [ :ex | 
			givenNotGiven := true.
			ex pass ]