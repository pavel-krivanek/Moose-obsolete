references
testStaticReferencedPackages
	| p2 p5 |
	p2 := self packageP2InteractedReferencerReferee.
	p5 := self packageP5FullReferee.
	self assert: self c6FullReferencerInSideOutSide queryOutgoingReferences atPackageScope size equals: 3.
	self
		assert:
			(self c6FullReferencerInSideOutSide queryOutgoingReferences atPackageScope
				equalsTo:
					(Set new
						add: p2;
						add: p5;
						add: self packageP3InteractedReferencer;
						yourself))