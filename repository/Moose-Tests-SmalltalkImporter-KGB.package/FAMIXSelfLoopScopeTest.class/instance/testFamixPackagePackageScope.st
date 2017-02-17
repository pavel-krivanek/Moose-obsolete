famix-package
testFamixPackagePackageScope

	self assert: (self packageP5FullReferee packageScope mooseIncludes: self packageP5FullReferee ).
	self deny: (self packageP5FullReferee packageScope mooseIncludes: self packageP10InteractedReferee )