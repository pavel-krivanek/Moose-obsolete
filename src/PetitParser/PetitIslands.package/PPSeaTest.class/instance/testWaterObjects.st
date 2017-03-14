tests - water objects
testWaterObjects
	| parser |
	parser := (self sea: ('class' asParser, self identifier trim, 'endclass' asParser ==> #second)) star.

	self assert: parser parse: ' /* hello there */ class Foo endclass'.
	self assert: result size = 1.
	self assert: result first second = 'Foo'.
	
	self assert: parser parse: ' /* class Bar endclass */ class Foo endclass'.
	self assert: result size = 2.
	self assert: result first second = 'Bar'.
	self assert: result second second = 'Foo'.
	
	parser := (self sea: ('class' asParser, self identifier trim, 'endclass' asParser ==> #second) water: self multilineCommentParser / #any asParser) star.

	self assert: parser parse: ' /* class Bar endclass */ class Foo endclass'.
	self assert: result size = 1.
	self assert: result first second = 'Foo'.