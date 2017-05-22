allOutgoingInvocations
testReferencedClassesIntoMyPackage
	self
		assert: 1
		equals:
			(self c6FullReferencerInSideOutSide queryAllOutgoingInvocations
				atScope: FAMIXType) withinMyPackage size.
	self
		assert:
			((self c6FullReferencerInSideOutSide queryAllOutgoingInvocations
				atScope: FAMIXType) withinMyPackage
				equalsTo:
					(Set new
						add: self c5ReferencerInSideRefereeInSide;
						yourself))