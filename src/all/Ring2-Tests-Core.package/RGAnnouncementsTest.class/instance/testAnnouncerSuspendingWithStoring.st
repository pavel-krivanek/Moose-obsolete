tests
testAnnouncerSuspendingWithStoring

	| env announcements behavior stored | 
	
	env := RGEnvironment new.
	announcements := OrderedCollection new.
	env announcer when: ClassAdded do: [ :announcement | announcements add: announcement ].
	
	stored := env announcer suspendAllWhileStoring: [ 
		behavior := env ensureClassNamed: #SomeClass.].
	
	self assert: announcements isEmpty.
	self assert: stored notEmpty.
	"TODO: more detailed check"