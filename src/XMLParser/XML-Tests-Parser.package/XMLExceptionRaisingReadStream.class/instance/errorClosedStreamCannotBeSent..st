private
errorClosedStreamCannotBeSent: aSelector
	Error signal:
		'Cannot send ', aSelector printString, ' on this stream when closed'