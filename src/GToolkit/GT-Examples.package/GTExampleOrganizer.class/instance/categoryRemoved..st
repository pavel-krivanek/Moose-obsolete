private-events
categoryRemoved: anAnnouncement
	self withoutExceptionsDo: [ 
		self with: GTExamplesModifiedAnnouncement announcement: anAnnouncement do: [ :ann |
			self examplesDo: [ :example | ann removeExample: example ].
			self reset.
			self examplesDo: [ :example | ann addExample: example ]. ] ]