tests
testSelectCoreWithComplexFrom
	super testSelectCoreWithComplexFrom.
	self assert: result from size equals: 1.
	self assert: result from first equals: 'prefix.TABLE'