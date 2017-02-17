passed
testClassAttributeHasInstanceScope
	"self debug:#testClassAttributeHasInstanceScope"

	| attribute theRoot |
	attribute := self model entityNamed: #'Smalltalk::TheRoot.x'.
	theRoot := self model entityNamed: #Smalltalk::TheRoot.
	self assert: attribute hasClassScope not.
	self assert: attribute belongsTo equals: theRoot