references
testStaticReferencedNamespaces
	| c15m3 |
	c15m3 := self
		getMethod: 'm4p8c15Mtd3()'
		from: self c15FullReferencerOutSide.
	self
		assert: (c15m3 queryOutgoingReferences atScope: FAMIXNamespace) size
		equals: 1.
	self
		assert:
			((c15m3 queryOutgoingReferences atScope: FAMIXNamespace)
				equalsTo: (Set with: self c19FullRefereeOutSide belongsTo))