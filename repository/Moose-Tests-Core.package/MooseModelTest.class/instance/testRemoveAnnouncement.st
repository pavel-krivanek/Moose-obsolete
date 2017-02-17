tests
testRemoveAnnouncement
	| entity announcedEntity |
	entity := MooseEntity new.
	announcedEntity := nil.
	model announcer when: MooseEntityRemoved do: [:a | 
		announcedEntity := a entity ].
	model add: entity.
	self assert: announcedEntity isNil.
	model remove: entity.
	self assert: announcedEntity == entity.