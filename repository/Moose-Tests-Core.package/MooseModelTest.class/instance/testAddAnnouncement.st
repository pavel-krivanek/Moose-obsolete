tests
testAddAnnouncement
	| entity announcedEntity |
	entity := MooseEntity new.
	announcedEntity := nil.
	model announcer 
		when: MooseEntityAdded do: [:a | announcedEntity := a entity ].

	model add: entity.
	self assert: announcedEntity == entity.