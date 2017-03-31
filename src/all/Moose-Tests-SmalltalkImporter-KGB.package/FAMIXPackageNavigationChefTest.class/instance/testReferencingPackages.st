allIncomingInvocations
testReferencingPackages
	self
		assert: (self packageP5FullReferee queryAllIncomingInvocations atPackageScope
		equalsTo: (Set
					with: self packageP1FullReferencer
					with: self packageP3InteractedReferencer
					with: self packageP7ReferencerReferee
					with: self packageP5FullReferee))