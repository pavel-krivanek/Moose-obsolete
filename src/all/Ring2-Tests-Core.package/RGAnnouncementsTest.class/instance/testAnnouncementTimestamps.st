tests
testAnnouncementTimestamps

	| env announcements behavior start end |
	
	start := DateAndTime now.
	env := RGEnvironment new.
	announcements := OrderedCollection new.
	env announcer when: ClassAdded do: [ :announcement | announcements add: announcement ].
	
	env ensureClassNamed: #SomeClass1.
	10 milliSeconds wait.
	env ensureClassNamed: #SomeClass2.

	end := DateAndTime now.

	self assert: (announcements size >=2).
	self assert: (announcements allSatisfy: [:each | each timeStamp between: start and: end] ).
	self assert: (announcements first timeStamp < announcements last timeStamp).
		
	"try setters"
	announcements first timeStamp: end.
	self assert: announcements first timeStamp equals: end.