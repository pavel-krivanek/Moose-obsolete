allIncomingInvocations
testReferencingPackages
	| p1 p3 p7 |
	p1 := self packageP1FullReferencer.
	p3 := self packageP3InteractedReferencer.
	p7 := self packageP7ReferencerReferee.
	self assert: self c3ReferencerInSideRefereeOutSide queryAllIncomingInvocations atPackageScope size equals: 3.
	self
		assert:
			(self c3ReferencerInSideRefereeOutSide queryAllIncomingInvocations atPackageScope
				equalsTo:
					(Set new
						add: p1;
						add: p3;
						add: p7;
						yourself))