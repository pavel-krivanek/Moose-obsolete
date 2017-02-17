initialization
fromAnnouncement: anAnnouncement
	super fromAnnouncement: anAnnouncement.
	
	self infoAt: #methodClass putHashForText: anAnnouncement newContext methodClass name.
	self infoAt: #methodSelector putHashForText: anAnnouncement newContext methodSelector.
	self infoAt: #pc put: anAnnouncement newContext pc.
	self infoAt: #stackPosition put: (anAnnouncement debugger session stack indexOf: anAnnouncement newContext ifAbsent: [-1]).
	"self infoAt: #nextInstruction putHashForText: anAnnouncement newContext peekInstruction asString."
	self addWindowHashFor: anAnnouncement debugger.