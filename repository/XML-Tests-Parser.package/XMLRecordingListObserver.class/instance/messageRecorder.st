accesing
messageRecorder
	^ messageRecorder ifNil: [messageRecorder := XMLMessageRecorder new]