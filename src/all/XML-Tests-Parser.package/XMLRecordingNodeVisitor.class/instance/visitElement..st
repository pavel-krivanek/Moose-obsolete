visiting
visitElement: anElement
	self messageRecorder
		recordMessageReceiver: self
		selector: #visitElement:
		argument: anElement.

	^ super visitElement: anElement.