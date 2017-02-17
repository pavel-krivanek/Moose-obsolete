references
testStaticReferencedNamespaces
	self assert: self c6FullReferencerInSideOutSide queryOutgoingReferences atNamespaceScope size equals: 2.
	self
		assert:
			(self c6FullReferencerInSideOutSide queryOutgoingReferences atNamespaceScope
				equalsTo:
					(Set new
						add: self namespace2FullReferee;
						add: self namespace1InteractedReferencerReferee;
						yourself))