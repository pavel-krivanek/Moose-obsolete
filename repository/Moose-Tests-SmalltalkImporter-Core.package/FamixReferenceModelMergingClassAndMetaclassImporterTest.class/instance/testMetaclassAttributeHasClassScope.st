new to put in VW
testMetaclassAttributeHasClassScope
	"self debug: #testMetaclassAttributeHasClassScope"

	| attribute theRoot |
	attribute := self model entityNamed: #'Smalltalk::TheRoot.CIV#mz'.
	theRoot := self model entityNamed: #Smalltalk::TheRoot.
	self assert: attribute hasClassScope.
	self assert: attribute belongsTo equals: theRoot