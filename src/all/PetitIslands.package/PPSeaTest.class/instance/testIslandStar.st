testing
testIslandStar
	|  p  |
	
	
	p := (self sea: 'a' asParser) star, 'b' asParser. 
	self assert: p parse: 'b'.
	self assert: result size = 2.
	self assert: result first size = 0.
	
	self assert: p parse: 'ab'.
	self assert: result size = 2.
	self assert: result first size = 1.
	
	self assert: p parse: 'aab'.
	self assert: result size = 2.
	self assert: result first size = 2.
	
	self assert: p parse: '...aab'.
	self assert: result size = 2.
	self assert: result first size = 2.
	
	self assert: p parse: '...aa...b'.
	self assert: result size = 2.
	self assert: result first size = 2.
	
	self assert: p parse: '...a...a...b'.
	self assert: result size = 2.
	self assert: result first size = 2.

	self assert: p parse: '...a...a...aa...b'.
	self assert: result size = 2.
	self assert: result first size = 4.
	
	"Thats the question, if I want this:"
	self assert: p fail: '...b'.
