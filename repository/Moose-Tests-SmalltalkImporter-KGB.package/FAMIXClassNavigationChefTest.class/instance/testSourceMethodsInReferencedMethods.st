allOutgoingInvocations
testSourceMethodsInReferencedMethods

	self assert: 2
		equals: self c6FullReferencerInSideOutSide queryAllOutgoingInvocations outOfMyNamespace sourceMethods size.
	self assert: (self c6FullReferencerInSideOutSide queryAllOutgoingInvocations outOfMyNamespace sourceMethods
		equalsTo: (Set
			with: (self getMethod: 'm1p3c6Mtd1()' from: self c6FullReferencerInSideOutSide)
			with: (self getMethod: 'm1p3c6Mtd2()' from: self c6FullReferencerInSideOutSide) ))