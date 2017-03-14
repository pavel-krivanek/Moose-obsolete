famix-namespace
testFamixNamespacePackageScope

	self should: [self namespace1InteractedReferencerReferee packageScope ] raise: Error.
	"self assert: (self namespace1InteractedReferencerReferee packageScope mooseIncludes: self packageP1FullReferencer ).
	self deny: (self namespace1InteractedReferencerReferee packageScope mooseIncludes: self packageP4FullInteracted )"