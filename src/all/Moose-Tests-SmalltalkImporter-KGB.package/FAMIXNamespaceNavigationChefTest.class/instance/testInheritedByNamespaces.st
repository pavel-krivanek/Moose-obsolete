inheritance
testInheritedByNamespaces
	self
		assert:
			((self namespace2FullReferee queryIncomingInheritances
				atScope: FAMIXNamespace)
				equalsTo:
					(Set
						with: self namespace1InteractedReferencerReferee
						with: self namespace2FullReferee))