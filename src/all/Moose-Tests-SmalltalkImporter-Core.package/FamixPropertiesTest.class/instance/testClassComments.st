testing
testClassComments
	self model allClasses do: [ :each | self assert: each numberOfComments >= 0 ].
	self assert: (self nodeClass propertyNamed: #numberOfComments) equals: 11.
	self assert: self nodeClass numberOfComments equals: 11