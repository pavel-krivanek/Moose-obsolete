testing
testIsSelfDuplication
	| aDuplication codeFragment1 codeFragment2 aSignature string1 string2 aMethod |
	aSignature := 'E12M1E3I1E4'.
	string1 := 'aMethod'.
	string2 := 'a = 2; b = 3; return a + b;'.
	aMethod := DudeDummyEntity name: string1 code: string2.
	codeFragment1 := DudeSourceCodeFragment
		entity: aMethod
		beginLine: 23
		endLine: 25
		fragmentLength: 3.
	codeFragment2 := DudeSourceCodeFragment
		entity: aMethod
		beginLine: 27
		endLine: 28
		fragmentLength: 2.
	aDuplication := DudeDuplication refCode: codeFragment1 dupCode: codeFragment2 signature: aSignature.
	self assert: (aDuplication isSelfDuplicationOf: aMethod)