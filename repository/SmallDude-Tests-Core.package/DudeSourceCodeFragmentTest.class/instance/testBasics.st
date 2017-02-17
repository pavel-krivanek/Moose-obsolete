testing
testBasics
	| aCodeFragment aMethod string1 string2 |
	string1 := 'firstMethod'.
	string2 := 'a = 2; b = 3; return a + b;'.
	aMethod := DudeDummyEntity name: string1 code: string2.
	aCodeFragment := DudeSourceCodeFragment
		entity: aMethod
		beginLine: 23
		endLine: 25
		fragmentLength: 3.
	self assert: aCodeFragment beginLine equals: 23.
	self assert: aCodeFragment endLine equals: 25.
	self assert: aCodeFragment entity mooseName equals: string1