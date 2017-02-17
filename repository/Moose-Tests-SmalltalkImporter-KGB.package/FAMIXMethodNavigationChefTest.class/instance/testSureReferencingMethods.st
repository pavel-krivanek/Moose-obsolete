sureIncomingInvocations
testSureReferencingMethods 
	 
	| c13InstCreation c14Mtd1 c12Mtd1 c1Mtd1 c1Mtd4 | 
	c13InstCreation := self 	getMethod: 'm2p6c13InstCreation()' from: self c13FullRefereeInSideOutSide. 
	c14Mtd1 := self getMethod: 'm3p7c14Mtd1()' from: self c14ReferencerOutSideRefereeOutSide. 
	c12Mtd1 := self getMethod: 'm2p6c12Mtd1()' from: self c12FullReferencerInSide. 
	c1Mtd1 := self getMethod: 'm1p1c1Mtd1()' from: self c1FullReferencerOutSide. 
	c1Mtd4 := self getMethod: 'm1p1c1Mtd4:(Object)' from: self c1FullReferencerOutSide. 
	
	self assert: 4 equals: c13InstCreation querySureIncomingInvocations opposites size. 
	self assert: (c13InstCreation querySureIncomingInvocations opposites 
				equalsTo: (Set
						with: c14Mtd1
						with: c12Mtd1
						with: c1Mtd1 
						with: c1Mtd4))