as yet unclassified
testProgram
	self parse: 'class Foo end'.
	self assert: result size = 0.