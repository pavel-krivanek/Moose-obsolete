private
errorAtEndStreamCannotBeSent: aSelector
	Error signal:
		'Cannot send ', aSelector printString, ' on this stream when it''s atEnd'