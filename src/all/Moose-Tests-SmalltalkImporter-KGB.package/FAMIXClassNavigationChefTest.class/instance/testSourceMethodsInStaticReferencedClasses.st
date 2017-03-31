references
testSourceMethodsInStaticReferencedClasses
	self assert: self c6FullReferencerInSideOutSide queryOutgoingReferences withinMyPackage sources size equals: 1.
	self
		assert:
			(self c6FullReferencerInSideOutSide queryOutgoingReferences withinMyPackage sources
				equalsTo: (Set with: (self getMethod: 'm1p3c6Mtd2()' from: self c6FullReferencerInSideOutSide)))