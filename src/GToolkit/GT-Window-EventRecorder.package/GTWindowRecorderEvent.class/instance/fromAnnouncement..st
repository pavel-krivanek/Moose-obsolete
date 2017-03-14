initialization
fromAnnouncement: anAnnouncement
	
	self addTypeFor: anAnnouncement.
	self infoAt: #label putHashForText: anAnnouncement window label.
	self infoAt: #windowHash put: anAnnouncement window identityHash.