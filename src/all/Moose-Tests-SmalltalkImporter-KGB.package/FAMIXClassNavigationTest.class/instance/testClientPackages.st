MooseKGB-TestFamix3-allDependencies
testClientPackages
	| p2 p8 p7 |
	p2 := self packageP2InteractedReferencerReferee.
	p7 := self packageP7ReferencerReferee.
	p8 := self packageP8FullReferencer.
	self assert: self c14ReferencerOutSideRefereeOutSide clientPackages size equals: 3.
	self
		assert:
			(self c14ReferencerOutSideRefereeOutSide clientPackages
				equalsTo:
					(Set new
						add: p2;
						add: p8;
						add: p7;
						yourself))