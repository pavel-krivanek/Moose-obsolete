dependencies
consumeReturnValueAt: testMethod
	^(cache includesKey: testMethod)
		ifTrue: [ cache removeKey: testMethod ]
		ifFalse: [ |ret|
			testMethod setUp.
			ret := testMethod perform: testMethod selector.
			testMethod tearDown.
			ret
			 ]