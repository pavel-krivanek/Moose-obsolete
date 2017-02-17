passed
testMetaclassMethodHasClassScope
	"self debug: #testMetaclassMethodHasClassScope"

	| theRoot instanceMethod classMethod |
	theRoot := self model entityNamed: #Smalltalk::TheRoot.
	instanceMethod := self model entityNamed: #'Smalltalk::TheRoot.accessingClass()'.
	classMethod := self model entityNamed: #'Smalltalk::TheRoot.classSend()'.
	self assert: instanceMethod hasClassScope not.
	self assert: classMethod hasClassScope.
	self assert: instanceMethod belongsTo equals: theRoot.
	self assert: classMethod belongsTo equals: theRoot