allOutgoingInvocations
testReferencedMethodsDefinedInto
	| c15m3 c19InstCreation1 c19m2 |
	c15m3 := self getMethod: 'm4p8c15Mtd3()' from: self c15FullReferencerOutSide.
	c19InstCreation1 := self getMethod: 'm6p11c19InstCreation1()' from: self c19FullRefereeOutSide.
	c19m2 := self getMethod: 'm6p11c19Mtd2()' from: self c19FullRefereeOutSide.
	
	self assert: 2
		equals: (c15m3 queryAllOutgoingInvocations opposites withinClass: self c19FullRefereeOutSide) size.
	self assert: ((c15m3 queryAllOutgoingInvocations opposites withinClass: self c19FullRefereeOutSide)
		equalsTo: (Set with: c19InstCreation1 with: c19m2))