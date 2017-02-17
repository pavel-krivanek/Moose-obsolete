events
recordAnnouncementIgnoreExecuted: anAnnouncement
	(anAnnouncement class ~= DebugActionExecuted) ifTrue: [ self recordAnnouncement: anAnnouncement ]