tests
testUnsubscribe

	| env announcements behavior | 
	
	env := RGEnvironment new.
	announcements := OrderedCollection new.
	env announcer when: ClassAdded do: [ :announcement | announcements add: announcement ].
	env announcer unsubscribe: self.
	
	behavior := env ensureClassNamed: #SomeClass.
	self assert: announcements isEmpty.
