testing
testIslandDetection
	| island parser |
	island := 'class' asParser, self identifier trim, 'endclass' asParser.
	parser := self sea: island.
	
	self assert: parser parse: 'class Foo endclass'.
	self assert: result size = 3.
	self assert: result second second = 'Foo'.

	self assert: parser parse: '/*comment*/ class Foo endclass'.
	self assert: result size = 3.
	self assert: result second second = 'Foo'.

	self assert: parser parse: '/*comment class Bar */ class Foo endclass'.
	self assert: result size = 3.
	self assert: result second second = 'Foo'.

	self assert: parser parse: '/*comment class Bar */ class Foo endclass //something more'.
	self assert: result size = 3.
	self assert: result second second = 'Foo'.

	self assert: parser parse: '/*comment class Bar endclass */ class Foo endclass //something more'.
	self assert: result size = 3.
	self assert: result second second = 'Bar'.
