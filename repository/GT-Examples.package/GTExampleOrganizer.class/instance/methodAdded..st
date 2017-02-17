private-events
methodAdded: anAnnouncement
	self withoutExceptionsDo: [ 
		self with: GTExamplesModifiedAnnouncement announcement: anAnnouncement do: [ :ann |
			self handleGTReservedMethod: anAnnouncement method for: ann.
			self removeExamplesOfMethod: anAnnouncement method for: ann.
			ann addExample: anAnnouncement method gtExample ] ]