new to put in VW
testClassMetaclassInstanceVariableAndShared
	"self debug: #testClassMetaclassInstanceVariableAndShared"

	| insVar theRoot insMetaclassVar shared |
	insVar := self model entityNamed: #'Smalltalk::TheRoot.z'.
	insMetaclassVar := self model entityNamed: #'Smalltalk::TheRoot.CIV#mz'.
	shared := self model entityNamed: #'Smalltalk::TheRoot.TheRootSharedVariable'.
	theRoot := self model entityNamed: #Smalltalk::TheRoot.
	self deny: insVar hasClassScope.
	self assert: insMetaclassVar hasClassScope.
	self assert: shared hasClassScope.
	self assert: insVar belongsTo equals: theRoot.
	self assert: insMetaclassVar belongsTo equals: theRoot.
	self assert: shared belongsTo equals: theRoot.
	self assert: shared isSharedVariable.
	self deny: insVar isSharedVariable.
	self deny: insMetaclassVar isSharedVariable