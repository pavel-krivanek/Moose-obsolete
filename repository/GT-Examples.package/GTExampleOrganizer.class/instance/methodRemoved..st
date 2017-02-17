private-events
methodRemoved: anAnnouncement
	self withoutExceptionsDo: [ 
		self resetStubs.
		self with: GTExamplesModifiedAnnouncement announcement: anAnnouncement do: [ :ann |
			self handleGTReservedMethod: anAnnouncement method for: ann.
			self removeExamplesOfMethod: anAnnouncement method for: ann ] ]