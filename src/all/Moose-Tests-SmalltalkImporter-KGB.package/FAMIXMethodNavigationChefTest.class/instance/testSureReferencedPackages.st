sureOutgoingInvocations
testSureReferencedPackages
	| c19Mtd2 c20Mtd1 p11 |
	c19Mtd2 := self
		getMethod: 'm6p11c19Mtd2()'
		from: self c19FullRefereeOutSide.
	c20Mtd1 := self
		getMethod: 'm6p12c20Mtd1()'
		from: self c20FullReferencerOutSide.
	p11 := self packageP11FullReferee.
	self
		assert: (c19Mtd2 querySureOutgoingInvocations atScope: FAMIXPackage) size
		equals: 1.
	self
		assert:
			((c19Mtd2 querySureOutgoingInvocations atScope: FAMIXPackage)
				includes: p11).
	self
		assert: (c20Mtd1 querySureOutgoingInvocations atScope: FAMIXPackage) size
		equals: 1.
	self
		assert:
			((c20Mtd1 querySureOutgoingInvocations atScope: FAMIXPackage)
				includes: p11)