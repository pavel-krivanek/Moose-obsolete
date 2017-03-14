tests
testIsSide

	| aFamixClass |
	aFamixClass := self model entityNamed: LANFileServer class mooseName.
	self assert: aFamixClass isClassSide.
	self assert: aFamixClass isInstanceSide not.
	aFamixClass := self model entityNamed: LANFileServer mooseName.
	self assert: aFamixClass isClassSide not.
	self assert: aFamixClass isInstanceSide.