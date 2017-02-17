testing
testAccesses
	| aDuplication codeFragment1 codeFragment2 aSignature string1 string2 aMethod |
	aSignature := 'E12.M1.E3.I1.E4'.
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
	aMethod := DudeDummyEntity name: string1 code: string2.
	codeFragment2 := DudeSourceCodeFragment
		entity: aMethod
		beginLine: 23
		endLine: 25
		fragmentLength: 3.
	aDuplication := DudeDuplication refCode: codeFragment1 dupCode: codeFragment2 signature: aSignature.
	self assert: aDuplication copiedLength equals: 19.
	self assert: aDuplication realLength equals: 3.
	self assert: aDuplication duplicateCode equals: codeFragment2.
	self assert: aDuplication referenceCode equals: codeFragment1.
	self assert: aDuplication signature equals: aSignature