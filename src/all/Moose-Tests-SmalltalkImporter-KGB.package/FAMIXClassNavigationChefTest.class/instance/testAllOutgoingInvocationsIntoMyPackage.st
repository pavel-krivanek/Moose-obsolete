allOutgoingInvocations
testAllOutgoingInvocationsIntoMyPackage
	self assert: 1 equals: self c6FullReferencerInSideOutSide queryAllOutgoingInvocations withinMyPackage size.
	self
		assert:
			((self c6FullReferencerInSideOutSide queryAllOutgoingInvocations withinMyPackage atScope: FAMIXType)
				equalsTo: (self c6FullReferencerInSideOutSide queryAllOutgoingInvocations atScope: FAMIXType) withinMyPackage)