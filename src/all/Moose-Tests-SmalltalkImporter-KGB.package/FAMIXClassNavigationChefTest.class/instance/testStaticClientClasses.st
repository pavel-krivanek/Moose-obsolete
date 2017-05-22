staticDependencies
testStaticClientClasses
	self
		assert:
			((self c11FullRefereeOutSide queryStaticIncomingAssociations
				atScope: FAMIXType)
				equalsTo:
					(Set new
						add: self c3ReferencerInSideRefereeOutSide;
						add: self c14ReferencerOutSideRefereeOutSide;
						add: self c6FullReferencerInSideOutSide;
						add: self c1FullReferencerOutSide;
						add: self c11FullRefereeOutSide;
						yourself))