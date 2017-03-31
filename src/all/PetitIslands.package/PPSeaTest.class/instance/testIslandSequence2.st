testing
testIslandSequence2
	| p a b |
	
	a := self sea: ('a' asParser plus).
	a name: 'a island'.
	
	b := self sea: 'b' asParser.
	b name: 'b island'.
	
	p := a optional, (b / self nilIsland).
	self assert: p  parse: 'a'.
	self assert: result size = 2.
	self assert: result first notNil.
	self assert: result second size = 3.
	self assert: result second second = nil.
	
	self assert: p parse: '..ab'.
	
	self assert: result isPetitFailure not.
	self assert: result size = 2.
	self assert: result first notNil.
	self assert: result second size = 3.
	self assert: result second second = 'b'.
	
	self assert: p parse: 'a..b'.
	
	self assert: result isPetitFailure not.
	self assert: result size = 2.
	self assert: result first notNil.
	self assert: result second size = 3.
	self assert: result second second = 'b'.
	
	self assert: p parse: 'ab...'.
	
	self assert: result isPetitFailure not.
	self assert: result size = 2.
	self assert: result first notNil.
	self assert: result second size = 3.
	self assert: result second second = 'b'.
	
	self assert: p parse: '...a...b...'.
	
	self assert: result isPetitFailure not.
	self assert: result size = 2.
	self assert: result first notNil.
	self assert: result second size = 3.
	self assert: result second second = 'b'.
	
	self assert: p parse: '...a...b...'.
	
	self assert: result isPetitFailure not.
	self assert: result size = 2.
	self assert: result first notNil.
	self assert: result second size = 3.
	self assert: result second second = 'b'.
	
	self assert: p end parse: '...b...'.
	
	self assert: result isPetitFailure not.
	self assert: result size = 2.
	self assert: result first isNil.
	self assert: result second size = 3.
	self assert: result second second = 'b'.