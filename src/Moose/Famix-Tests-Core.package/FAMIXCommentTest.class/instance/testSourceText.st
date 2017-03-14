basic
testSourceText
	| comment |
	comment := FAMIXComment new.
	self assert: comment sourceText isEmpty.
	comment content: 'something'.
	self assert: comment sourceText equals: 'something'