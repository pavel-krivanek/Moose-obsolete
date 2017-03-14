initialization
initialize
	super initialize.	
	recordedEvents := WaitfreeQueue new.
	
	self category: #windows;
		register.
	
	self registerToSystemAnnouncer.
	
	Privacy sendDiagnosticsAndUsageData
		ifTrue: [ self registerToWorldAnnouncements ]