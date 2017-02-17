famix-namespace
testFamixNamespaceClassScope

	self assert: (self namespace1InteractedReferencerReferee typeScope mooseIncludes: self c2ReferencerOutSideRefereeInSide).
	self deny: (self namespace1InteractedReferencerReferee typeScope mooseIncludes: self c20FullReferencerOutSide)