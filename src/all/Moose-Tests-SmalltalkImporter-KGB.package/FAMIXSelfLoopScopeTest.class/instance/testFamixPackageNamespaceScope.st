famix-package
testFamixPackageNamespaceScope

	self should: [self assert: (self packageP5FullReferee namespaceScope )] raise: Error.
	"self assert: (self packageP5FullReferee namespaceScope mooseIncludes: self namespace2FullReferee ).
	self deny: (self packageP5FullReferee namespaceScope mooseIncludes: self namespace6InteractedReferee )"
	"namespace
		^ (self classes collectAsSet: #container) first"