testing
testIsNotSelfDuplication
	| aDuplication codeFragment1 codeFragment2 aSignature string1 string2 aMethod bMethod |
	aSignature := 'E12M1E3I1E4'.
	string1 := 'firstMethod'.
	string2 := 'a = 2; b = 3; return a + b;'.
	aMethod := DudeDummyEntity name: string1 code: string2.
	codeFragment1 := DudeSourceCodeFragment
		entity: aMethod
		beginLine: 23
		endLine: 25
		fragmentLength: 3.
	string1 := 'secondMethod'.
	string2 := 'a = 0; return a + 4;'.
	bMethod := DudeDummyEntity name: string1 code: string2.
	codeFragment2 := DudeSourceCodeFragment
		entity: bMethod
		beginLine: 23
		endLine: 25
		fragmentLength: 3.
	aDuplication := DudeDuplication refCode: codeFragment1 dupCode: codeFragment2 signature: aSignature.
	self assert: (aDuplication isSelfDuplicationOf: aMethod) not.
	self assert: (aDuplication isSelfDuplicationOf: bMethod) not