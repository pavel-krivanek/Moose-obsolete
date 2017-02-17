as yet unclassified
testClassObjectTests

	self assert: (
		(self c1FullReferencerOutSide queryAllIncomingInvocations atTypeScope)
		includes: self c1FullReferencerOutSide
	).
	self deny: (
		(self c1FullReferencerOutSide queryAllIncomingInvocations atTypeScope withoutSelfLoops )
		includes: self c1FullReferencerOutSide
	)