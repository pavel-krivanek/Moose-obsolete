allDependencies
testClientNamespaces
	self assert: (self c14ReferencerOutSideRefereeOutSide queryAllIncoming withoutSelfLoops atScope: FAMIXNamespace) size equals: 2.
	self
		assert:
			((self c14ReferencerOutSideRefereeOutSide queryAllIncoming withoutSelfLoops atScope: FAMIXNamespace) equalsTo: (Set with: self namespace1InteractedReferencerReferee with: self namespace4FullReferencer))