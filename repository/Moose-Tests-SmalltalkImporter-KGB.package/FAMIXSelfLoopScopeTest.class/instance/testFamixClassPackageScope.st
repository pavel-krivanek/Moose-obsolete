famix-class
testFamixClassPackageScope

	self assert: (self c12FullReferencerInSide packageScope mooseIncludes: self packageP6InteractedReferee).
	self deny: (self c12FullReferencerInSide packageScope mooseIncludes: self packageP5FullReferee )