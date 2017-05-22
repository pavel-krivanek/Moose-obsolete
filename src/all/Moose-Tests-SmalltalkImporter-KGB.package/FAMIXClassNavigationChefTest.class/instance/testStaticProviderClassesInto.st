staticDependencies
testStaticProviderClassesInto
	| p6 |
	p6 := self packageP6InteractedReferee.
	self
		assert:
			(((self c11FullRefereeOutSide queryStaticOutgoingAssociations
				atScope: FAMIXType) withinPackage: p6)
				equalsTo: (Set with: self c12FullReferencerInSide)).
	self
		assert:
			(((self c11FullRefereeOutSide queryStaticOutgoingAssociations
				atScope: FAMIXType) withinNamespace: self namespace2FullReferee)
				equalsTo:
					(Set
						with: self c12FullReferencerInSide
						with: self c11FullRefereeOutSide))