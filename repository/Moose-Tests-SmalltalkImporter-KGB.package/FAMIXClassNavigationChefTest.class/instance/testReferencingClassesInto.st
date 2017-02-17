allIncomingInvocations
testReferencingClassesInto
	| p1 p2 |
	p1 := self packageP1FullReferencer.
	p2 := self packageP2InteractedReferencerReferee.
	self
		assert: (self c14ReferencerOutSideRefereeOutSide queryAllIncomingInvocations atTypeScope withinPackage: p2) size
		equals: 1.
	self
		assert:
			((self c14ReferencerOutSideRefereeOutSide queryAllIncomingInvocations atTypeScope withinPackage: p2)
				equalsTo:
					(Set new
						add: self c2ReferencerOutSideRefereeInSide;
						yourself)).
	self
		assert:
			(self c14ReferencerOutSideRefereeOutSide queryAllIncomingInvocations atTypeScope
				withinNamespace: self namespace1InteractedReferencerReferee) size
		equals: 1.
	self
		assert:
			((self c14ReferencerOutSideRefereeOutSide queryAllIncomingInvocations atTypeScope
				withinNamespace: self namespace1InteractedReferencerReferee)
				equalsTo:
					(Set new
						add: self c2ReferencerOutSideRefereeInSide;
						yourself)).
	self
		assert:
			((self c3ReferencerInSideRefereeOutSide queryAllIncomingInvocations atTypeScope withinPackage: p1)
				equalsTo: (Set with: self c1FullReferencerOutSide)).
	self
		assert:
			(self c3ReferencerInSideRefereeOutSide queryAllIncomingInvocations atTypeScope
				withinNamespace: self namespace1InteractedReferencerReferee) size
		equals: 2.
	self
		assert:
			((self c3ReferencerInSideRefereeOutSide queryAllIncomingInvocations atTypeScope
				withinNamespace: self namespace1InteractedReferencerReferee)
				equalsTo:
					(Set new
						add: self c1FullReferencerOutSide;
						add: self c6FullReferencerInSideOutSide;
						yourself))