sureIncomingInvocations
testSureReferencingMethods
	| c2m1 |
	c2m1 := self getMethod: 'm1p2c2Mtd1()' from: self c2ReferencerOutSideRefereeInSide.
	self assert: self c14ReferencerOutSideRefereeOutSide querySureIncomingInvocations opposites size equals: 1.
	self
		assert: (self c14ReferencerOutSideRefereeOutSide querySureIncomingInvocations opposites equalsTo: (Set with: c2m1))