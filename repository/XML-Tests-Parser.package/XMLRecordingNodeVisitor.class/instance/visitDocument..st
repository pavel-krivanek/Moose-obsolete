visiting
visitDocument: aDocument
	self messageRecorder
		recordMessageReceiver: self
		selector: #visitDocument:
		argument: aDocument.

	^ super visitDocument: aDocument.