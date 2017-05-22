allOutgoingInvocations
testAllOutgoingInvocationsOutOfMyNamespace
	self
		assert: 3
		equals:
			self c6FullReferencerInSideOutSide queryAllOutgoingInvocations
				outOfMyNamespace size.
	self
		assert:
			((self c6FullReferencerInSideOutSide queryAllOutgoingInvocations
				outOfMyNamespace atScope: FAMIXType)
				equalsTo:
					(self c6FullReferencerInSideOutSide queryAllOutgoingInvocations
						atScope: FAMIXType) outOfMyNamespace)