announcement registration
privacyChanged
	Privacy sendDiagnosticsAndUsageData
		ifTrue: [ self registerToWorldAnnouncements ]
		ifFalse: [ self unregisterToWorldAnnouncements ]