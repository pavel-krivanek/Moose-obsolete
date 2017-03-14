sureIncomingInvocations
testSureReferencingClassesInto
	| p1 p2 |
	p1 := self packageP1FullReferencer.
	p2 := self packageP2InteractedReferencerReferee.
	self
		assert: (self c14ReferencerOutSideRefereeOutSide querySureIncomingInvocations atTypeScope withinPackage: p2) size
		equals: 1.
	self
		assert:
			((self c14ReferencerOutSideRefereeOutSide querySureIncomingInvocations atTypeScope withinPackage: p2)
				equalsTo:
					(Set new
						add: self c2ReferencerOutSideRefereeInSide;
						yourself)).
	self
		assert:
			(self c14ReferencerOutSideRefereeOutSide querySureIncomingInvocations atTypeScope
				withinNamespace: self namespace1InteractedReferencerReferee) size
		equals: 1.
	self
		assert:
			((self c14ReferencerOutSideRefereeOutSide querySureIncomingInvocations atTypeScope
				withinNamespace: self namespace1InteractedReferencerReferee)
				equalsTo:
					(Set new
						add: self c2ReferencerOutSideRefereeInSide;
						yourself)).
	self
		assert: (self c3ReferencerInSideRefereeOutSide querySureIncomingInvocations atTypeScope withinPackage: p1) isEmpty.
	self
		assert:
			(self c19FullRefereeOutSide querySureIncomingInvocations atTypeScope withinNamespace: self namespace4FullReferencer)
				size
		equals: 1.
	self
		assert:
			((self c19FullRefereeOutSide querySureIncomingInvocations atTypeScope withinNamespace: self namespace4FullReferencer)
				equalsTo:
					(Set new
						add: self c15FullReferencerOutSide;
						yourself))