sureOutgoingInvocations
testSureReferencedClassesInto
	| c20Mtd1 p11 pEx |
	c20Mtd1 := self getMethod: 'm6p12c20Mtd1()' from: self c20FullReferencerOutSide.
	p11 := self packageP11FullReferee.
	pEx := self packagePExtensions.
	self assert: (c20Mtd1 querySureOutgoingInvocations atTypeScope withinPackage: pEx) isEmpty.
	self assert: (c20Mtd1 querySureOutgoingInvocations atTypeScope withinPackage: p11) size equals: 1.
	self
		assert: ((c20Mtd1 querySureOutgoingInvocations atTypeScope withinPackage: p11) includes: self c19FullRefereeOutSide)