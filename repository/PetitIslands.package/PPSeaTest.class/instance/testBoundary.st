testing
testBoundary
	|  p end body start |
	
	"use non-trivial end-of-class a complex end"
	end := 'end' asParser trimBlanks, 'of' asParser trimBlanks, 'class' asParser trimBlanks ==> [:args | #eoc].
	body := self nilIsland.
	start := 'class' asParser trim, self identifier.
	p := start, body, end.
	
	self assert: p parse: 'class Foo end of class'.
	self assert: result size = 4.
	self assert: result second = 'Foo'.
	self assert: result third first = ''.
	self assert: result third last = ''.
	
	self assert: p parse: 'class Foo .... end of class'.
	self assert: result size = 4.
	self assert: result second = 'Foo'.
	self assert: result third first = ' ....'.
	self assert: result third last = ''.
	
	self assert: p parse: 'class Foo .... end ... end of class'.
	self assert: result size = 4.
	self assert: result second = 'Foo'.
	
	self assert: p parse: 'class Foo .... end of ... end of class'.
	self assert: result size = 4.
	self assert: result second = 'Foo'.
	self assert: result third first = ' .... end of ...'.
	self assert: result third last = ''.

