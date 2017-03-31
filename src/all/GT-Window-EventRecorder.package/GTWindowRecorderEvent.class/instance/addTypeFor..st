initialization
addTypeFor: anAnnouncement
	| type |

	type := anAnnouncement window eventRecorderWindowType class name.
	
	(GTWindowEventCollector commonWindowTypes includes: type)
		ifTrue: [ self infoAt: #type put: type ]
		ifFalse: [ self infoAt: #type putHashForText: type ]