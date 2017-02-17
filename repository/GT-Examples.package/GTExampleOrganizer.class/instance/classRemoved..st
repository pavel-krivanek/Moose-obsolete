private-events
classRemoved: anAnnouncement
	self withoutExceptionsDo: [ 
		self resetStubs.
		self with: GTExamplesModifiedAnnouncement announcement: anAnnouncement do: [ :ann |
			self removeExamplesOfClass: anAnnouncement classRemoved theNonMetaClass name for: ann ] ]