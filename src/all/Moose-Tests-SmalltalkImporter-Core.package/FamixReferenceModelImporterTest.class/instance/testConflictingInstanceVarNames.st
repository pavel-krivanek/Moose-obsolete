new tests
testConflictingInstanceVarNames
	"self debug: #testConflictingInstanceVarNames"

	| insVar theRoot insMetaclassVar shared theRootMeta |
	insVar := self model entityNamed: #'Smalltalk::TheRoot.instanceAndClassPotentiallyConflictingName'.
	insMetaclassVar := self model entityNamed: #'Smalltalk::TheRoot_class.instanceAndClassPotentiallyConflictingName'.
	shared := self model entityNamed: #'Smalltalk::TheRoot.TheRootSharedVariable'.
	theRoot := self model entityNamed: #Smalltalk::TheRoot.
	theRootMeta := self model entityNamed: #Smalltalk::TheRoot_class.
	self deny: insVar hasClassScope.
	self assert: insMetaclassVar hasClassScope.
	self assert: shared hasClassScope.
	self assert: insVar belongsTo equals: theRoot.
	self assert: insMetaclassVar belongsTo equals: theRootMeta.
	self assert: shared belongsTo equals: theRoot