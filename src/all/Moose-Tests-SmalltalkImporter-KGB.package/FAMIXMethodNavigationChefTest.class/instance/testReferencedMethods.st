allOutgoingInvocations
testReferencedMethods
	| c1Mtd1 c1Mtd4 c13Mtd1 c13Mtd2 c13InstCreation |
	c1Mtd1 := self getMethod: 'm1p1c1Mtd1()' from: self c1FullReferencerOutSide.
	c1Mtd4 := self getMethod: 'm1p1c1Mtd4:(Object)' from: self c1FullReferencerOutSide.
	c13Mtd1 := self getMethod: 'm2p6c13Mtd1:(Object)' from: self c13FullRefereeInSideOutSide.
	c13Mtd2 := self getMethod: 'm2p6c13Mtd2()' from: self c13FullRefereeInSideOutSide.
	c13InstCreation := self getMethod: 'm2p6c13InstCreation()' from: self c13FullRefereeInSideOutSide.
	
	self assert: 4
		equals: c1Mtd4 queryAllOutgoingInvocations opposites size.
	self assert: (c1Mtd4 queryAllOutgoingInvocations opposites
		equalsTo: (Set with: c1Mtd1 with: c13Mtd1 with: c13Mtd2 with: c13InstCreation ))