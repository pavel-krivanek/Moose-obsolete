staticDependencies
testStaticProviderClassesOutOfMyPackage
	self
		assert:
			((self c11FullRefereeOutSide queryStaticOutgoingAssociations
				atScope: FAMIXType) outOfMyPackage
				equalsTo: (Set with: self c12FullReferencerInSide))