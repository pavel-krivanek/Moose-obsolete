allIncomingInvocations
testReferencingMethodsOutOf
	| c19m2 |
	c19m2 := self getMethod: 'm6p11c19Mtd2()' from: self c19FullRefereeOutSide.
	self assert: c19m2 queryAllIncomingInvocations opposites size equals: 3.
	self
		assert: (c19m2 queryAllIncomingInvocations opposites outOfClass: self c16FullReferencerOutSideInSide) size
		equals: 2.
	self
		assert:
			((c19m2 queryAllIncomingInvocations opposites outOfClass: self c16FullReferencerOutSideInSide)
				equalsTo:
					(Set
						with: (self getMethod: 'm4p8c15Mtd1()' from: self c15FullReferencerOutSide)
						with: (self getMethod: 'm4p8c15Mtd3()' from: self c15FullReferencerOutSide)))