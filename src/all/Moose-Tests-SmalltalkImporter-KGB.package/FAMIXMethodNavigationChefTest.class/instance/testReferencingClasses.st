allIncomingInvocations
testReferencingClasses
	| c19m2 |
	c19m2 := self
		getMethod: 'm6p11c19Mtd2()'
		from: self c19FullRefereeOutSide.
	self
		assert: (c19m2 queryAllIncomingInvocations atScope: FAMIXType) size
		equals: 2.
	self
		assert:
			((c19m2 queryAllIncomingInvocations atScope: FAMIXType)
				equalsTo:
					(Set
						with: self c15FullReferencerOutSide
						with: self c16FullReferencerOutSideInSide)).
	self
		assert:
			((c19m2 queryAllIncomingInvocations opposites atScope: FAMIXType)
				equalsTo:
					(Set
						with: self c15FullReferencerOutSide
						with: self c16FullReferencerOutSideInSide))