accessing
position: aPosition
	position := aPosition.
	self
		messageTextAppend: aPosition
		withDescription: 'at pos.'.