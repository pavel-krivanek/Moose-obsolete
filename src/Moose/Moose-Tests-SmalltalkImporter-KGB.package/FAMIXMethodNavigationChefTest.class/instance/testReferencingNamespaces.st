allIncomingInvocations
testReferencingNamespaces
	| c19m1 |
	c19m1 := self getMethod: 'm6p11c19Mtd1()' from: self c19FullRefereeOutSide.
	self assert: c19m1 queryAllIncomingInvocations atNamespaceScope size equals: 1