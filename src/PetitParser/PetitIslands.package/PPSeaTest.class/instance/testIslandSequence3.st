testing
testIslandSequence3
	
	| parser   body class extends |
	class := self sea: 'class' asParser trim, self identifier trim.	
	extends := self sea: 'extends' asParser trim, self identifier trim.
	body := self sea: self nestedBlock.

	parser := (class, extends optional, body) plus.
	self assert: parser parse: '
	/* lorem ipsum */ 
	class Foo { whatever } 
	
	// something more 
	class Bar extends Zorg { blah blah bla } 
	// this is the end'.
	
	self assert: result isPetitFailure not.
	self assert: result size = 2. 