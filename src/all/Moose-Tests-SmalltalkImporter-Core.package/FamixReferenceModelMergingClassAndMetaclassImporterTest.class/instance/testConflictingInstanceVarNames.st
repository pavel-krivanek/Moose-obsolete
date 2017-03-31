new to put in VW
testConflictingInstanceVarNames
	"self debug: #testConflictingInstanceVarNames"

	| insVar theRoot insMetaclassVar shared |
	insVar := self model entityNamed: #'Smalltalk::TheRoot.instanceAndClassPotentiallyConflictingName'.
	insMetaclassVar := self model entityNamed: #'Smalltalk::TheRoot.CIV#instanceAndClassPotentiallyConflictingName'.
	shared := self model entityNamed: #'Smalltalk::TheRoot.TheRootSharedVariable'.
	theRoot := self model entityNamed: #Smalltalk::TheRoot.
	self deny: insVar hasClassScope.
	self assert: insMetaclassVar hasClassScope.
	self assert: shared hasClassScope.
	self assert: insVar belongsTo equals: theRoot.
	self assert: insMetaclassVar belongsTo equals: theRoot.
	self assert: shared belongsTo equals: theRoot