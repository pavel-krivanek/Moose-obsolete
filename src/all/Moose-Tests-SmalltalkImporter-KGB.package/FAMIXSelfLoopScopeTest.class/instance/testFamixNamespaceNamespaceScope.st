famix-namespace
testFamixNamespaceNamespaceScope

	self assert: (self namespace1InteractedReferencerReferee namespaceScope mooseIncludes: self namespace1InteractedReferencerReferee).
	self deny: (self namespace1InteractedReferencerReferee namespaceScope mooseIncludes: self namespace2FullReferee)