new to put in VW
testSharedVariableReification
	"self debug: #testSharedVariableReification"

	| shared |
	shared := self model entityNamed: #'Smalltalk::TheRoot.TheRootSharedVariable'.
	self assert: shared hasClassScope.
	self assert: shared isSharedVariable.
	self assert: shared isProtected.
	self assert: shared belongsTo equals: (self model entityNamed: TheRoot mooseName)