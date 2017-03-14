tests
testBookmark
	| entity model bookmark |
	model := MooseModel new.
	entity := MooseEntity new.
	model add: entity.
	bookmark := entity bookmarkAs: #test.
	self assert: bookmark isBookmarked  