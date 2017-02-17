dependencies
produceReturnValueAt: testMethod
	cache at: testMethod ifAbsentPut: [ testMethod perform: testMethod selector ]