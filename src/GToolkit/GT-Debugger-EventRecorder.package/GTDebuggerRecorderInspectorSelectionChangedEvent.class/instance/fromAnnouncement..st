initialization
fromAnnouncement: anAnnouncement
	super fromAnnouncement: anAnnouncement.
	
	anAnnouncement selection ifNotNil: [
		self infoAt: #variableName putHashForText: anAnnouncement selection key asString.
		self infoAt: #variableValueClass putHashForText: anAnnouncement selection value class name ].
	self addWindowHashFor: anAnnouncement debugger.