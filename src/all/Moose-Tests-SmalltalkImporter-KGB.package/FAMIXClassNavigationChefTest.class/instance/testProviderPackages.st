allDependencies
testProviderPackages
	| p10 p11 p7 pEx |
	p10 := self packageP10InteractedReferee.
	p11 := self packageP11FullReferee.
	p7 := self packageP7ReferencerReferee.
	pEx := self packagePExtensions.
	self assert: (self c15FullReferencerOutSide queryAllOutgoing atScope: FAMIXPackage) size equals: 4.
	self
		assert:
			((self c15FullReferencerOutSide queryAllOutgoing atScope: FAMIXPackage)
				equalsTo:
					(Set new
						add: p10;
						add: p11;
						add: pEx;
						add: p7;
						yourself))