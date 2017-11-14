allDependencies
testClientNamespaces
	self
		assert:
			((self namespace2FullReferee queryAllIncoming atScope: FAMIXNamespace)
				equalsTo: (Set with: self namespace1InteractedReferencerReferee with: self namespace3ReferencerReferee with: self namespace2FullReferee))