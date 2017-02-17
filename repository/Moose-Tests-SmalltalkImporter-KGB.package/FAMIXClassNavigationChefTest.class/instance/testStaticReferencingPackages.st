references
testStaticReferencingPackages
	| p3 p7 |
	p3 := self packageP3InteractedReferencer.
	p7 := self packageP7ReferencerReferee.
	self assert: self c3ReferencerInSideRefereeOutSide queryIncomingReferences atPackageScope size equals: 2.
	self
		assert:
			(self c3ReferencerInSideRefereeOutSide queryIncomingReferences atPackageScope
				equalsTo:
					(Set new
						add: p3;
						add: p7;
						yourself))