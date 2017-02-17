testing
testIslandStar2
	|  p  |
	
	
	p := (self sea: 'a' asParser) star, 'b' asParser optional. 
	self assert: p parse: 'aa'.
	self assert: result size = 2.
	self assert: result first size = 2.
	
	self assert: p parse: '....aa'.
	self assert: result size = 2.
	self assert: result first size = 2.
	
	self assert: p parse: '...a...a...'.
	self assert: result size = 2.
	self assert: result first size = 2.
	
	self assert: p parse: '...a...a...b'.
	self assert: result size = 2.
	self assert: result first size = 2.
	self assert: result second = 'b'.