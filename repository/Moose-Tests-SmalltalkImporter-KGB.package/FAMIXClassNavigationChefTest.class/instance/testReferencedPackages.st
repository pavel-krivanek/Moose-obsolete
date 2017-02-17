allOutgoingInvocations
testReferencedPackages
	self assert: self c6FullReferencerInSideOutSide queryAllOutgoingInvocations atPackageScope size equals: 3.
	self
		assert:
			(self c6FullReferencerInSideOutSide queryAllOutgoingInvocations atPackageScope
				equalsTo:
					(Set new
						add: self packageP2InteractedReferencerReferee;
						add: self packageP3InteractedReferencer;
						add: self packageP5FullReferee;
						yourself))