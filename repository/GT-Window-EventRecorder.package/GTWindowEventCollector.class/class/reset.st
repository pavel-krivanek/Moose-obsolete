instance creation
reset
	uniqueInstance ifNotNil: [
		uniqueInstance unregisterToWorldAnnouncements.
		uniqueInstance unregisterToSystemAnnouncer.
		uniqueInstance := nil ].
	self initialize.