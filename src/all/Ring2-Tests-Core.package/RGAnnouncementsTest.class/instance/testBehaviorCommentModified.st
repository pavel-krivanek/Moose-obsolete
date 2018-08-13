tests
testBehaviorCommentModified

	| env announcements behavior | 
	
	env := RGEnvironment new.
	announcements := OrderedCollection new.
	env announcer when: ClassCommented do: [ :announcement | announcements add: announcement ].
	
	behavior := env ensureClassNamed: #SomeClass.
	self assert: announcements isEmpty.
	behavior comment content: 'some comment'.
	self assert: announcements size equals: 1.
	behavior comment author: 'SomeAuthor'.
	behavior comment time: DateAndTime new.
	self assert: announcements size equals: 3.
	self assert: (announcements allSatisfy: [:each | each classCommented == behavior ]).
	
	
	
	
	