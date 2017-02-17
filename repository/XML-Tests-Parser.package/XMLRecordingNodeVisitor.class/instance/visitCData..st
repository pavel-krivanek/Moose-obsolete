visiting
visitCData: aCData
	self messageRecorder
		recordMessageReceiver: self
		selector: #visitCData:
		argument: aCData.

	^ super visitCData: aCData.