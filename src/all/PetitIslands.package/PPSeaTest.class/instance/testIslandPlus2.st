testing
testIslandPlus2
	
	| island  parser |
	island := self sea: ('class' asParser, self identifier trim).
	parser := island plus.
	
	self assert: parser parse: '....class Foo....'.
	self assert: result size = 1.
	self assert: result first second second = 'Foo'.


	self assert: parser parse: '....class . class Foo....'.
	self assert: result size = 1.
	self assert: result first second second = 'Foo'.

	self assert: parser parse: '....class . class Foo class Bar....'.
	self assert: result size = 2.
	self assert: result first second second = 'Foo'.
	self assert: result second second second = 'Bar'.



	self assert: parser fail: '.....'.