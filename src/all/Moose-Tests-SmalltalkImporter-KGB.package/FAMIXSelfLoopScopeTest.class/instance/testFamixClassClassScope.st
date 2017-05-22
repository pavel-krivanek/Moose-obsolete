famix-class
testFamixClassClassScope
	self
		assert:
			(self c12FullReferencerInSide typeScope
				mooseIncludes: self c12FullReferencerInSide).
	self
		deny:
			(self c12FullReferencerInSide typeScope
				mooseIncludes: self c13FullRefereeInSideOutSide).
	self
		assert:
			((self c1FullReferencerOutSide queryAllIncomingInvocations
				atScope: FAMIXType) includes: self c1FullReferencerOutSide).
	self
		deny:
			((self c1FullReferencerOutSide queryAllIncomingInvocations
				atScope: FAMIXType) withoutSelfLoops
				includes: self c1FullReferencerOutSide)