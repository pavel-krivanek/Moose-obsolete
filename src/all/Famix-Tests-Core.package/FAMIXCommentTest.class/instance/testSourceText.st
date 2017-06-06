tests
testSourceText
	| comment |
	comment := self actualClass new.
	self assert: comment sourceText isEmpty.
	comment content: 'something'.
	self assert: comment sourceText equals: 'something'