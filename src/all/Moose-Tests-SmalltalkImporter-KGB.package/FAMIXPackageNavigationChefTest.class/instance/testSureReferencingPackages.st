sureIncomingInvocations
testSureReferencingPackages
	self
		assert:
			((self packageP5FullReferee querySureIncomingInvocations
				atScope: FAMIXPackage)
				equalsTo:
					(Set
						with: self packageP1FullReferencer
						with: self packageP7ReferencerReferee
						with: self packageP3InteractedReferencer
						with: self packageP5FullReferee))