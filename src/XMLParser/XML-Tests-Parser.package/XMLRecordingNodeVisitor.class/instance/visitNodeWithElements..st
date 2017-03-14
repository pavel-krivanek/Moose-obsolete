visiting
visitNodeWithElements: aNodeWithElements
	self messageRecorder
		recordMessageReceiver: self
		selector: #visitNodeWithElements:
		argument: aNodeWithElements.

	^ super visitNodeWithElements: aNodeWithElements.