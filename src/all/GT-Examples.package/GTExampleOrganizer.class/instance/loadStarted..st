private-events
loadStarted: anAnnouncement
	self withoutExceptionsDo: [
		self stopSystemAnnouncements.
		self reset ]