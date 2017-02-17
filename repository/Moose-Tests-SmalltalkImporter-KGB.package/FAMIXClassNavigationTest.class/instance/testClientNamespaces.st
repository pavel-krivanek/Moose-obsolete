MooseKGB-TestFamix3-allDependencies
testClientNamespaces
	self assert: self c14ReferencerOutSideRefereeOutSide clientNamespaces size equals: 2.
	self
		assert:
			(self c14ReferencerOutSideRefereeOutSide clientNamespaces
				equalsTo:
					(Set new
						add: self namespace1InteractedReferencerReferee;
						add: self namespace4FullReferencer;
						yourself))