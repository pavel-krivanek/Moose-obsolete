references
testStaticReferencedPackages
	| c15m3 |
	c15m3 := self
		getMethod: 'm4p8c15Mtd3()'
		from: self c15FullReferencerOutSide.
	self
		assert: (c15m3 queryOutgoingReferences atScope: FAMIXPackage) size
		equals: 1.
	self
		assert:
			((c15m3 queryOutgoingReferences atScope: FAMIXPackage)
				equalsTo: (Set with: self c19FullRefereeOutSide packageScope))