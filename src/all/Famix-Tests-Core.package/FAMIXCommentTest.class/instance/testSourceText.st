tests
testSourceText
	| comment |
	comment := self actualClass new.
	self assert: comment sourceText isEmpty.
	comment content: 'something'.
	self assert: comment sourceText equals: 'something'.
	comment content: nil.
	self assert: comment sourceText isEmpty.
	comment
		sourceAnchor:
			(FAMIXSourceTextAnchor new
				source: 'something';
				yourself).
	self assert: comment sourceText equals: 'something'