references
testStaticReferencingClassesInto
	| p1 p2 |
	p1 := self packageP1FullReferencer.
	p2 := self packageP2InteractedReferencerReferee.
	self
		assert:
			((self c14ReferencerOutSideRefereeOutSide queryIncomingReferences
				atScope: FAMIXType) withinPackage: p2) size
		equals: 1.
	self
		assert:
			(((self c14ReferencerOutSideRefereeOutSide queryIncomingReferences
				atScope: FAMIXType) withinPackage: p2)
				equalsTo:
					(Set new
						add: self c2ReferencerOutSideRefereeInSide;
						yourself)).
	self
		assert:
			((self c14ReferencerOutSideRefereeOutSide queryIncomingReferences
				atScope: FAMIXType)
				withinNamespace: self namespace1InteractedReferencerReferee) size
		equals: 1.
	self
		assert:
			(((self c14ReferencerOutSideRefereeOutSide queryIncomingReferences
				atScope: FAMIXType)
				withinNamespace: self namespace1InteractedReferencerReferee)
				equalsTo:
					(Set new
						add: self c2ReferencerOutSideRefereeInSide;
						yourself)).
	self
		assert:
			((self c3ReferencerInSideRefereeOutSide queryIncomingReferences
				atScope: FAMIXType) withinPackage: p1) isEmpty.
	self
		assert:
			((self c3ReferencerInSideRefereeOutSide queryIncomingReferences
				atScope: FAMIXType)
				withinNamespace: self namespace1InteractedReferencerReferee) size
		equals: 1.
	self
		assert:
			(((self c3ReferencerInSideRefereeOutSide queryIncomingReferences
				atScope: FAMIXType)
				withinNamespace: self namespace1InteractedReferencerReferee)
				equalsTo:
					(Set new
						add: self c6FullReferencerInSideOutSide;
						yourself))