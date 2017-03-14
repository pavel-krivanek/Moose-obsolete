tests - position
testLeftPosition03
	box leftPosition: -10 @ -10.
	self assert: box leftPosition equals: -10 @ -10.
	self assert: box position equals: 10 @ -10.