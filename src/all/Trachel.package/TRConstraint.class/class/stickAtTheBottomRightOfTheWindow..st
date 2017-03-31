public - sticking
stickAtTheBottomRightOfTheWindow: trachelShape
	self moveAtTheBottomRightOfTheWindow: trachelShape.
	trachelShape canvas
		when: TRResizeCanvasEvent
		do: [ :event | self moveAtTheBottomRightOfTheWindow: trachelShape ]