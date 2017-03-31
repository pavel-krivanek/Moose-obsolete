allDependencies
testClientNamespaces
	self assert: self c14ReferencerOutSideRefereeOutSide queryAllIncomingAssociations withoutSelfLoops atNamespaceScope size equals: 2.
	self
		assert:
			(self c14ReferencerOutSideRefereeOutSide queryAllIncomingAssociations withoutSelfLoops atNamespaceScope
				equalsTo:
					(Set new
						add: self namespace1InteractedReferencerReferee;
						add: self namespace4FullReferencer;
						yourself))