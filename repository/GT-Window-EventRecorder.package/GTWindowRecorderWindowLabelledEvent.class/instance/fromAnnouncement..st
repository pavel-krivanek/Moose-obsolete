initialization
fromAnnouncement: anAnnouncement
	
	super fromAnnouncement: anAnnouncement.
	self infoAt: #newLabel putHashForText: anAnnouncement label.