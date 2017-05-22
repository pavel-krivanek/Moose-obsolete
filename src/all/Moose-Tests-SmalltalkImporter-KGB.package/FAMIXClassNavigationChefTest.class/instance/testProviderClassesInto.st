allDependencies
testProviderClassesInto
	| p11 |
	p11 := self packageP11FullReferee.
	self
		assert:
			(((self c15FullReferencerOutSide queryAllOutgoingAssociations
				atScope: FAMIXType) withinPackage: p11)
				equalsTo:
					(Set new
						add: self c19FullRefereeOutSide;
						yourself)).
	self
		assert:
			(((self c15FullReferencerOutSide queryAllOutgoingAssociations
				atScope: FAMIXType)
				withinNamespace: self namespace6InteractedReferee)
				equalsTo:
					(Set new
						add: self c19FullRefereeOutSide;
						yourself))