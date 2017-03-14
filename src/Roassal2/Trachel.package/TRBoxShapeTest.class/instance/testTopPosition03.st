tests - position
testTopPosition03
	box topPosition: -10 @ -10.
	self assert: box topPosition equals: -10 @ -10.
	self assert: box position equals: -10 @ 5.