*GT-Debugger-EventRecorder
asRecorderEvent

	^ (debuggingAction asRecorderEvent fromAnnouncement: self)
		isExecuted: false;
		yourself