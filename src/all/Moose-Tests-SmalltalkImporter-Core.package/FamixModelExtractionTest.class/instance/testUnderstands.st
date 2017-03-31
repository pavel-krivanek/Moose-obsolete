tests
testUnderstands

	| aFamixClass |
	aFamixClass := self model entityNamed: LANFileServer mooseName.
	self assert: aFamixClass notNil.

	"method defined in the same class"
	self assert: (aFamixClass understands: #'output:(Object)').

	"method defined in the superclass"
	self assert: (aFamixClass understands: #'accept:(Object)').

	"method defined in the superclass of superclass"
	self assert: (aFamixClass understands: #'send:(Object)')