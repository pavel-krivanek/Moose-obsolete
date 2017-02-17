visiting
visitComment: aComment
	self messageRecorder
		recordMessageReceiver: self
		selector: #visitComment:
		argument: aComment.

	^ super visitComment: aComment.