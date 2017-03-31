events
recordDebuggerOpenEventFor: aDebugger
	| event |
	Privacy sendDiagnosticsAndUsageData ifFalse: [ ^ self ].
	event := GTDebuggerRecorderOpenEvent new fromDebugger: aDebugger.
	self add: event.
	GTEventRecorder uniqueInstance announcer announce: (GTDebuggerRecorderEventRecorded forEvent: event).