tests
testAllBookmarks
	| entity1 entity2 entity3 |
	entity1 := MooseEntity new.
	entity2 := MooseEntity new.
	entity3 := MooseEntity new.
	model add: entity1.
	model add: entity2.
	model add: entity3.
	entity1 bookmarkAs: 'one'.
	entity2 bookmarkAs: 'two'.
	self assert: model allBookmarks size equals: 2