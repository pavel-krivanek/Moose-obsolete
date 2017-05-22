staticDependencies
testStaticClientPackages
	| p1 p2 p3 p7 |
	p1 := self packageP1FullReferencer.
	p2 := self packageP2InteractedReferencerReferee.
	p3 := self packageP3InteractedReferencer.
	p7 := self packageP7ReferencerReferee.
	self
		assert:
			((self c11FullRefereeOutSide queryStaticIncomingAssociations
				atScope: FAMIXPackage)
				equalsTo:
					(Set new
						add: p1;
						add: p2;
						add: p3;
						add: p7;
						add: self packageP5FullReferee;
						yourself))