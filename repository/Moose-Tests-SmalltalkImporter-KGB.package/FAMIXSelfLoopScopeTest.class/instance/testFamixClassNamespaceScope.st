famix-class
testFamixClassNamespaceScope

	self assert: (self c12FullReferencerInSide namespaceScope mooseIncludes: self namespace2FullReferee).
	self deny: (self c12FullReferencerInSide namespaceScope mooseIncludes: self namespace1InteractedReferencerReferee)