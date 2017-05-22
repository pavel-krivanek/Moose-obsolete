references
testStaticReferencedNamespaces
	self
		assert:
			(self c6FullReferencerInSideOutSide queryOutgoingReferences
				atScope: FAMIXNamespace) size
		equals: 2.
	self
		assert:
			((self c6FullReferencerInSideOutSide queryOutgoingReferences
				atScope: FAMIXNamespace)
				equalsTo:
					(Set new
						add: self namespace2FullReferee;
						add: self namespace1InteractedReferencerReferee;
						yourself))