tests
testBookmarkAsRaisesAnnouncement
	| entity1 announcedEntity |
	entity1 := MooseEntity new.
	model add: entity1.
	announcedEntity := nil.
	model announcer 
		when: MooseEntityAdded do: [:a | announcedEntity := a entity ].
	
	entity1 bookmarkAs: 'one'.
	self assert: announcedEntity notNil.