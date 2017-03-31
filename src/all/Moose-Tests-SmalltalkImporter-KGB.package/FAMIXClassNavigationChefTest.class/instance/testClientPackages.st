allDependencies
testClientPackages
	| p2 p8 |
	p2 := self packageP2InteractedReferencerReferee.
	p8 := self packageP8FullReferencer.
	self assert: self c14ReferencerOutSideRefereeOutSide queryAllIncomingAssociations withoutSelfLoops atPackageScope size equals: 2.
	self
		assert:
			(self c14ReferencerOutSideRefereeOutSide queryAllIncomingAssociations withoutSelfLoops atPackageScope
				equalsTo:
					(Set new
						add: p2;
						add: p8;
						yourself))