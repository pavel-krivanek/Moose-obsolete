staticDependencies
testStaticProviderClasses
	self
		assert:
			((self c11FullRefereeOutSide queryStaticOutgoingAssociations
				atScope: FAMIXType)
				equalsTo:
					(Set
						with: self c12FullReferencerInSide
						with: self c11FullRefereeOutSide))