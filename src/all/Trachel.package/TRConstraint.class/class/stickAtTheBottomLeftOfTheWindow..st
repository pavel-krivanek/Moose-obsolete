public - sticking
stickAtTheBottomLeftOfTheWindow: trachelShape
	self moveAtTheBottomLeftOfTheWindow: trachelShape.
	trachelShape canvas
		when: TRResizeCanvasEvent
		do: [ :event | self moveAtTheBottomLeftOfTheWindow: trachelShape ]