accessing
messageRecorder
	^ messageRecorder ifNil: [messageRecorder := XMLMessageRecorder new]