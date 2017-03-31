references
testStaticReferencingMethods
	| c2m1 c2m2 |
	c2m1 := self getMethod: 'm1p2c2Mtd1()' from: self c2ReferencerOutSideRefereeInSide.
	c2m2 := self getMethod: 'm1p2c2Mtd2()' from: self c2ReferencerOutSideRefereeInSide.
	self assert: self c14ReferencerOutSideRefereeOutSide queryIncomingReferences opposites size equals: 2.
	self
		assert:
			(self c14ReferencerOutSideRefereeOutSide queryIncomingReferences opposites
				equalsTo:
					(Set new
						add: c2m1;
						add: c2m2;
						yourself))