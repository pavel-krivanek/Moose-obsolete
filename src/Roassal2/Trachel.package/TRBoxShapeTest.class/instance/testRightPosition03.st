tests - position
testRightPosition03
	box rightPosition: -10 @ -10.
	self assert: box rightPosition equals: -10 @ -10.
	self assert: box position equals: -30 @ -10.