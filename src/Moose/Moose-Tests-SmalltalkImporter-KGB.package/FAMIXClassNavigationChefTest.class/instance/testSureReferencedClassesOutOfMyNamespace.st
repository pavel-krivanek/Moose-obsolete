sureOutgoingInvocations
testSureReferencedClassesOutOfMyNamespace
	self
		assert: self c6FullReferencerInSideOutSide querySureOutgoingInvocations atTypeScope outOfMyNamespace size
		equals: 1.
	self
		assert:
			(self c6FullReferencerInSideOutSide querySureOutgoingInvocations atTypeScope outOfMyNamespace
				equalsTo:
					(Set new
						add: self c11FullRefereeOutSide;
						yourself))