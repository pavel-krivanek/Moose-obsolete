testing
testMakeInvert
	| aDuplication codeFragment1 codeFragment2 aSignature string1 string2 aMethod invertedDuplication |
	aSignature := 'E12M1E3I1E4'.
	string1 := 'firstMethod'.
	string2 := 'a = 2; b = 3; return a + b;'.
	aMethod := DudeDummyEntity wrappedName: string1 code: string2.
	codeFragment1 := DudeSourceCodeFragment
		entity: aMethod
		beginLine: 23
		endLine: 25
		fragmentLength: 3.
	string1 := 'secondMethod'.
	string2 := 'a = 0; return a + 4;'.
	aMethod := DudeDummyEntity wrappedName: string1 code: string2.
	codeFragment2 := DudeSourceCodeFragment
		entity: aMethod
		beginLine: 23
		endLine: 25
		fragmentLength: 3.
	aDuplication := DudeDuplication refCode: codeFragment1 dupCode: codeFragment2 signature: aSignature.
	self assert: ((invertedDuplication := aDuplication makeInvert) = nil) not.
	self assert: invertedDuplication signature equals: 'E12M1E3D1E4'