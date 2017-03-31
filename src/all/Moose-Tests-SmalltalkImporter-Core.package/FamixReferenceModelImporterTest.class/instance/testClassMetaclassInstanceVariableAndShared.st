new tests
testClassMetaclassInstanceVariableAndShared
	"self debug: #testClassMetaclassInstanceVariableAndShared"

	| insVar theRoot insMetaclassVar shared theRootMeta |
	insVar := self model entityNamed: #'Smalltalk::TheRoot.z'.
	insMetaclassVar := self model entityNamed: #'Smalltalk::TheRoot_class.mz'.
	shared := self model entityNamed: #'Smalltalk::TheRoot.TheRootSharedVariable'.
	theRoot := self model entityNamed: #Smalltalk::TheRoot.
	theRootMeta := self model entityNamed: #Smalltalk::TheRoot_class.
	self deny: insVar hasClassScope.
	self assert: insMetaclassVar hasClassScope.
	self assert: shared hasClassScope.
	self assert: insVar belongsTo equals: theRoot.
	self assert: insMetaclassVar belongsTo equals: theRootMeta.
	self assert: shared belongsTo equals: theRoot.
	self assert: shared isSharedVariable.
	self deny: insVar isSharedVariable.
	self deny: insMetaclassVar isSharedVariable