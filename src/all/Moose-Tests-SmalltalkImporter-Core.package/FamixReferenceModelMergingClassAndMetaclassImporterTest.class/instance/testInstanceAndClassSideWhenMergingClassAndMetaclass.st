tests
testInstanceAndClassSideWhenMergingClassAndMetaclass	
	"self debug: #testInstanceAndClassSideWhenMergingClassAndMetaclass"
	| node |
	node := self model entityNamed: #'Smalltalk::TheRoot'.
	self assert: (self model entityNamed: #'Smalltalk::TheRoot_class' ifAbsent: [nil]) isNil.
	self  assert: node instanceSide == node.
	self  assert: node classSide == nil.