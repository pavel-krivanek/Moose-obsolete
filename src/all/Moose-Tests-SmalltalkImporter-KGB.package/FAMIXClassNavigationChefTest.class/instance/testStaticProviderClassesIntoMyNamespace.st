staticDependencies
testStaticProviderClassesIntoMyNamespace
	self
		assert:
			((self c11FullRefereeOutSide queryStaticOutgoingAssociations
				atScope: FAMIXType) withinMyNamespace
				equalsTo:
					(Set
						with: self c12FullReferencerInSide
						with: self c11FullRefereeOutSide))