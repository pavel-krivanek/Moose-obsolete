allOutgoingInvocations
testReferencedClasses
	self
		assert:
			(self c6FullReferencerInSideOutSide queryAllOutgoingInvocations
				atScope: FAMIXType) size
		equals: 3.
	self
		assert:
			((self c6FullReferencerInSideOutSide queryAllOutgoingInvocations
				atScope: FAMIXType)
				equalsTo:
					(Set new
						add: self c3ReferencerInSideRefereeOutSide;
						add: self c5ReferencerInSideRefereeInSide;
						add: self c11FullRefereeOutSide;
						yourself))