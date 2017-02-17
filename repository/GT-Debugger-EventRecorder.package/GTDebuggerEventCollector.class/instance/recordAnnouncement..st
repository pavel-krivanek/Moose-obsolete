events
recordAnnouncement: anAnnouncement
	| event |
	Privacy sendDiagnosticsAndUsageData ifFalse: [ ^ self ].
	(anAnnouncement respondsTo: #asRecorderEvent) ifTrue: [	
		event := anAnnouncement asRecorderEvent.
		self add: event.
		GTEventRecorder uniqueInstance announcer announce: (GTDebuggerRecorderEventRecorded forEvent: event). ]