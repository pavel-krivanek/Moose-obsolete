private-events
classRenamed: anAnnouncement
	self withoutExceptionsDo: [ 
		self resetStubs.
		self with: GTExamplesModifiedAnnouncement announcement: anAnnouncement do: [ :ann |
			self removeExamplesOfClass: anAnnouncement oldName for: ann.
			self addExamplesOfClass: anAnnouncement newName for: ann ] ]