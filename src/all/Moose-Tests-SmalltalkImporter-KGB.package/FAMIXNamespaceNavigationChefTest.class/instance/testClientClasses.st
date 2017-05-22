allDependencies
testClientClasses
	self
		assert:
			(self namespace2FullReferee queryAllIncomingAssociations
				atScope: FAMIXType) asSet
		equals:
			{self c14ReferencerOutSideRefereeOutSide.
			self c1FullReferencerOutSide.
			self c6FullReferencerInSideOutSide.
			self c3ReferencerInSideRefereeOutSide.
			self c10FullReferencerInSide.
			self c11FullRefereeOutSide.
			self c12FullReferencerInSide.
			self c13FullRefereeInSideOutSide.
			self c9FullRefereeInSide} asSet