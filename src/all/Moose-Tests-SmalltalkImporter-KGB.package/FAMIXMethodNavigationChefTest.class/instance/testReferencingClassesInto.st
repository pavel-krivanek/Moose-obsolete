allIncomingInvocations
testReferencingClassesInto
	| c19m2 p9 |
	c19m2 := self
		getMethod: 'm6p11c19Mtd2()'
		from: self c19FullRefereeOutSide.
	p9 := self packageP9FullReferencer.
	self
		assert: 1
		equals:
			((c19m2 queryAllIncomingInvocations atScope: FAMIXType)
				withinPackage: p9) size.
	self
		assert:
			(((c19m2 queryAllIncomingInvocations atScope: FAMIXType)
				withinPackage: p9)
				equalsTo: (Set with: self c16FullReferencerOutSideInSide)).
	self
		assert: 1
		equals:
			((c19m2 queryAllIncomingInvocations atScope: FAMIXType)
				withinNamespace: self namespace4FullReferencer) size.
	self
		assert:
			(((c19m2 queryAllIncomingInvocations atScope: FAMIXType)
				withinNamespace: self namespace4FullReferencer)
				equalsTo: (Set with: self c15FullReferencerOutSide))