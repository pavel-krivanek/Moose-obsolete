allOutgoingInvocations
testReferencedClassesOutOfMyNamespace
	self
		assert: 1
		equals:
			(self c6FullReferencerInSideOutSide queryAllOutgoingInvocations
				atScope: FAMIXType) outOfMyNamespace size.
	self
		assert:
			((self c6FullReferencerInSideOutSide queryAllOutgoingInvocations
				atScope: FAMIXType) outOfMyNamespace
				equalsTo:
					(Set new
						add: self c11FullRefereeOutSide;
						yourself))