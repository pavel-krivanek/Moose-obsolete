allIncomingInvocations
testReferencingMethods
	| c19m2 c15m1 c15m3 c16m1 |
	c19m2 := self getMethod: 'm6p11c19Mtd2()' from: self c19FullRefereeOutSide.
	c15m3 := self getMethod: 'm4p8c15Mtd3()' from: self c15FullReferencerOutSide.
	c15m1 := self getMethod: 'm4p8c15Mtd1()' from: self c15FullReferencerOutSide.
	c16m1 := self getMethod: 'm5p9c16Mtd1()' from: self c16FullReferencerOutSideInSide.
	
	self assert: 3
		equals: c19m2 queryAllIncomingInvocations opposites size.
	self assert: ((Set with: c15m1 with: c15m3 with: c16m1)
					equalsTo: c19m2 queryAllIncomingInvocations opposites)
		description: 'Unexpected query result' 