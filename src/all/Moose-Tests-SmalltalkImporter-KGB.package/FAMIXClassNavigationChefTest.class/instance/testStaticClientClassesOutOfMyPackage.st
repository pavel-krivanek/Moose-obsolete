staticDependencies
testStaticClientClassesOutOfMyPackage
	self
		assert:
			((self c11FullRefereeOutSide queryStaticIncomingAssociations
				atScope: FAMIXType) outOfMyPackage
				equalsTo:
					(Set new
						add: self c3ReferencerInSideRefereeOutSide;
						add: self c14ReferencerOutSideRefereeOutSide;
						add: self c6FullReferencerInSideOutSide;
						add: self c1FullReferencerOutSide;
						yourself))