testing
testClassLinesOfCode
	self model allClasses do: [ :each | self assert: each numberOfLinesOfCode >= 0 ].
	self assert: (self nodeClass propertyNamed: #numberOfLinesOfCode) equals: 58.
	self assert: self nodeClass numberOfLinesOfCode equals: 58