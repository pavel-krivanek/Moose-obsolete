tests
testStubNotOverride
	"self debug:#testStubNotOverride"
	| theRoot object |
	theRoot := self model entityNamed: #'Smalltalk::TheRoot'.
	object := self model entityNamed: #'Smalltalk::Object'.
	self assert: theRoot isStub not.
	self assert: object isStub