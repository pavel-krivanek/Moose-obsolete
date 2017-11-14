tests
testDelegationClassMessageWhenEmptyMetaLevel

	ghost ghostBehaviour metaLevel: GHMetaLevel empty.
	self delegationTarget: 20@30.
	
	self assert: ghost class equals: Point