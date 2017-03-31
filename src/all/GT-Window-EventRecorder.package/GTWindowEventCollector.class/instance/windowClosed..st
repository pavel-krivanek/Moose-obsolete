annuncements
windowClosed: anAnnouncement

	self recordAnnouncement: anAnnouncement.
	self unregisterToWindowAnnouncementsFor: anAnnouncement window