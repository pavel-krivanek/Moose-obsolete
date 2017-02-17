sureOutgoingInvocations
testSureReferencedMethods
	| c11InstCreation1 |
	c11InstCreation1 := self getMethod: 'm2p5c11InstCreation1()' from: self c11FullRefereeOutSide.
	self assert: self c6FullReferencerInSideOutSide querySureOutgoingInvocations opposites size equals: 1.
	self
		assert:
			(self c6FullReferencerInSideOutSide querySureOutgoingInvocations opposites
				equalsTo:
					(Set new
						add: c11InstCreation1;
						yourself))