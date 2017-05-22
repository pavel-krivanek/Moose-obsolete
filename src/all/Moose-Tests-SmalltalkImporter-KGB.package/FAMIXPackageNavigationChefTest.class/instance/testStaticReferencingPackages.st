references
testStaticReferencingPackages
	| p1 p3 p5 p7 |
	p1 := self packageP1FullReferencer.
	p3 := self packageP3InteractedReferencer.
	p5 := self packageP5FullReferee.
	p7 := self packageP7ReferencerReferee.
	self
		assert:
			((p5 queryIncomingReferences atScope: FAMIXPackage)
				equalsTo:
					(Set
						with: p1
						with: p7
						with: p3
						with: p5))