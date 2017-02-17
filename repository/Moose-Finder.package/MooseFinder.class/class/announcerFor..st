utils
announcerFor: anObject
	^ (anObject respondsTo: #announcer) 
		ifTrue: [anObject announcer] 
		ifFalse: [Announcer new]