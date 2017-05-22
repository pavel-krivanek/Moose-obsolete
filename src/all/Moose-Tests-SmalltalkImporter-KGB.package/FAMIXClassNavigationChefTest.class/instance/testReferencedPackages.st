allOutgoingInvocations
testReferencedPackages
	self
		assert:
			(self c6FullReferencerInSideOutSide queryAllOutgoingInvocations
				atScope: FAMIXPackage) size
		equals: 3.
	self
		assert:
			((self c6FullReferencerInSideOutSide queryAllOutgoingInvocations
				atScope: FAMIXPackage)
				equalsTo:
					(Set new
						add: self packageP2InteractedReferencerReferee;
						add: self packageP3InteractedReferencer;
						add: self packageP5FullReferee;
						yourself))