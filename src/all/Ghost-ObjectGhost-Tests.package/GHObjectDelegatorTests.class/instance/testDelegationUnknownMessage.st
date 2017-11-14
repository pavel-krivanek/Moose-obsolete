tests
testDelegationUnknownMessage

	self delegationTarget: 20@30.
	
	self should: [ghost someMessage] raise: MessageNotUnderstood 