initialization
fromAnnouncement: anAnnouncement
	super fromAnnouncement: anAnnouncement.
	
	self addWindowHashFor: anAnnouncement presentation.