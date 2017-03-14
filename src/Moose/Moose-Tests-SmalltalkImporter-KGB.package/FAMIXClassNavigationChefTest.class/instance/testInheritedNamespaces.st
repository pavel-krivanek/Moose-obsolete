inheritance
testInheritedNamespaces
	self assert: self c11FullRefereeOutSide queryOutgoingInheritances atNamespaceScope size equals: 1.
	self
		assert: (self c11FullRefereeOutSide queryOutgoingInheritances atNamespaceScope includes: self namespace2FullReferee)