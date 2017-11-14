tests
testDelegationMessages

	self delegationTarget: 20@30.
	
	self assert: ghost x equals: 20