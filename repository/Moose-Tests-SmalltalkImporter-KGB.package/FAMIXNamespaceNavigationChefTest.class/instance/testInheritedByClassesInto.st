inheritance
testInheritedByClassesInto
	self
		assert:
			((self namespace2FullReferee queryIncomingInheritances atTypeScope
				withinNamespace: self namespace1InteractedReferencerReferee)
				equalsTo: (Set with: self c3ReferencerInSideRefereeOutSide)).
	self
		assert:
			(self namespace2FullReferee queryIncomingInheritances atTypeScope withinNamespace: self namespace2FullReferee) size
		equals: 1