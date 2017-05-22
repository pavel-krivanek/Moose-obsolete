sureOutgoingInvocations
testSureReferencedNamespaces
	| c1Mtd4 |
	c1Mtd4 := self
		getMethod: 'm1p1c1Mtd4:(Object)'
		from: self c1FullReferencerOutSide.
	self
		assert: (c1Mtd4 querySureOutgoingInvocations atScope: FAMIXNamespace) size
		equals: 1.
	self
		assert:
			((c1Mtd4 querySureOutgoingInvocations atScope: FAMIXNamespace)
				includes: self namespace2FullReferee)