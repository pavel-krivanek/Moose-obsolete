initialization
fromAnnouncement: anAnnouncement
	
	super fromAnnouncement: anAnnouncement.
	self infoAt: #oldPosition put: anAnnouncement oldPosition.
	self infoAt: #newPosition put: anAnnouncement newPosition.