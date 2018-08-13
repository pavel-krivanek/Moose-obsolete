tests
testComment

	| aClass aComment |
	
	aClass := RGClass named: #SomeClass.
	aComment := RGComment parent: aClass.
	aClass comment: aComment.
	
	self assert: (aClass comment == aComment).
