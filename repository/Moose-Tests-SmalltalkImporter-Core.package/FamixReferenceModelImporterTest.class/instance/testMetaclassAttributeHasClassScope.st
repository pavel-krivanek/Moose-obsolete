new tests
testMetaclassAttributeHasClassScope
	"self debug: #testMetaclassAttributeHasClassScope"

	| attribute theRoot |
	attribute := self model entityNamed: #'Smalltalk::TheRoot_class.mz'.
	theRoot := self model entityNamed: #Smalltalk::TheRoot_class.
	self assert: attribute hasClassScope.
	self assert: attribute belongsTo equals: theRoot