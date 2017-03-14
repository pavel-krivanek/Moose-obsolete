famix-package
testFamixPackageClassScope

	self assert: (self packageP5FullReferee typeScope mooseIncludes: self c11FullRefereeOutSide).
	self deny: (self packageP5FullReferee typeScope mooseIncludes: self c5ReferencerInSideRefereeInSide )