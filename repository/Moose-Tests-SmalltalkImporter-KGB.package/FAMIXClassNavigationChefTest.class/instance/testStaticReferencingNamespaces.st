references
testStaticReferencingNamespaces
	self assert: self c3ReferencerInSideRefereeOutSide queryIncomingReferences atNamespaceScope size equals: 2.
	self
		assert:
			(self c3ReferencerInSideRefereeOutSide queryIncomingReferences atNamespaceScope
				equalsTo:
					(Set new
						add: self namespace3ReferencerReferee;
						add: self namespace1InteractedReferencerReferee;
						yourself))