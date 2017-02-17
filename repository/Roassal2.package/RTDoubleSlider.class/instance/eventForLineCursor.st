private
eventForLineCursor
	| p w2 res |
	p := lineCursor position.
	w2 := (lineCursor trachelShape width/2) @ 0.
	cursorMin translateTo: p - w2.
	cursorMax translateTo: p + w2.
	self eventForCursorMax: false.
	res := self eventForCursorMin: false.
	callback rtValue: res.