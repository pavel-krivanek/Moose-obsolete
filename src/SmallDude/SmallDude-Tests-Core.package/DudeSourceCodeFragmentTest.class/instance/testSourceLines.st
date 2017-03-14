testing
testSourceLines
	| aCodeFragment aMethod string1 |
	string1 := 'firstMethod'.
	aMethod := DudeDummyEntity name: string1 code: self sourceCode.
	aCodeFragment := DudeSourceCodeFragment
		entity: aMethod
		beginLine: 2
		endLine: 5
		fragmentLength: 4.
	self assert: aCodeFragment beginLine equals: 2.
	self assert: aCodeFragment endLine equals: 5.
	self assert: aCodeFragment entity mooseName equals: string1.
	self assert: aCodeFragment textLines size equals: 4.
	self assert: (aCodeFragment textLines at: 1) equals: 'bla bla'.
	self assert: (aCodeFragment textLines at: 2) equals: 'bla'.
	self assert: (aCodeFragment textLines at: 3) equals: 'da'.
	self assert: (aCodeFragment textLines at: 4) equals: 'da da'