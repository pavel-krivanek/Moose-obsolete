allOutgoingInvocations
testReferencedClassesIntoMyNamespace
	self
		assert:
			(self c6FullReferencerInSideOutSide queryAllOutgoingInvocations
				atScope: FAMIXType) withinMyNamespace size
		equals: 2.
	self
		assert:
			((self c6FullReferencerInSideOutSide queryAllOutgoingInvocations
				atScope: FAMIXType) withinMyNamespace
				equalsTo:
					(Set new
						add: self c3ReferencerInSideRefereeOutSide;
						add: self c5ReferencerInSideRefereeInSide;
						yourself))