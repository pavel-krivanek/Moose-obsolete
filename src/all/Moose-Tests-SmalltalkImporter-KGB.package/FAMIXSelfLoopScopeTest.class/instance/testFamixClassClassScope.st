famix-class
testFamixClassClassScope

	self assert: (self c12FullReferencerInSide typeScope mooseIncludes: self c12FullReferencerInSide).
	self deny: (self c12FullReferencerInSide typeScope mooseIncludes: self c13FullRefereeInSideOutSide).

	self assert: (
		(self c1FullReferencerOutSide queryAllIncomingInvocations atTypeScope)
		includes: self c1FullReferencerOutSide
	).
	self deny: (
		(self c1FullReferencerOutSide queryAllIncomingInvocations atTypeScope withoutSelfLoops )
		includes: self c1FullReferencerOutSide
	)