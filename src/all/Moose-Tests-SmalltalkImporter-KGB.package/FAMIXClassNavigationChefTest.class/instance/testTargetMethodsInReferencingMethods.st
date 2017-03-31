allIncomingInvocations
testTargetMethodsInReferencingMethods
	| c14m2 c14m4 c14InstCreation |
	c14m2 := self getMethod: 'm3p7c14Mtd2()' from: self c14ReferencerOutSideRefereeOutSide.
	c14m4 := self getMethod: 'm3p7c14Mtd4()' from: self c14ReferencerOutSideRefereeOutSide.
	c14InstCreation := self getMethod: 'm3p7c14InstCreation()' from: self c14ReferencerOutSideRefereeOutSide.
	self assert: self c14ReferencerOutSideRefereeOutSide queryAllIncomingInvocations targetMethods size equals: 3.
	self
		assert:
			(self c14ReferencerOutSideRefereeOutSide queryAllIncomingInvocations targetMethods
				equalsTo: (Set with: c14m2 with: c14m4 with: c14InstCreation))