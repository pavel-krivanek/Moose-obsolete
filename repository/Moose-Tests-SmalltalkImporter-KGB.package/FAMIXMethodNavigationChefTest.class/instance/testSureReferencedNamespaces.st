sureOutgoingInvocations
testSureReferencedNamespaces
	| c1Mtd4 |
	c1Mtd4 := self getMethod: 'm1p1c1Mtd4:(Object)' from: self c1FullReferencerOutSide.
	self assert: c1Mtd4 querySureOutgoingInvocations atNamespaceScope size equals: 1.
	self assert: (c1Mtd4 querySureOutgoingInvocations atNamespaceScope includes: self namespace2FullReferee)