allDependencies
testProviderClassesInto
	| p11 |
	p11 := self packageP11FullReferee.
	self assert: (((self c15FullReferencerOutSide queryAllOutgoing atScope: FAMIXType) withinPackage: p11) equalsTo: (Set with: self c19FullRefereeOutSide)).
	self assert: (((self c15FullReferencerOutSide queryAllOutgoing atScope: FAMIXType) withinNamespace: self namespace6InteractedReferee) equalsTo: (Set with: self c19FullRefereeOutSide))