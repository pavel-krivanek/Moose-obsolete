tests
testSelect
	| t group el1 el2 el3 v |
	t := OrderedCollection new.
	group := MooseModel new.
	group add: (el1 := MooseEntity new).
	group add: (el2 := MooseEntity new).
	group add: (el3 := MooseEntity new).
	v := group select: [ :el | el == el1 ].
	self assert: v size equals: 1.
	self assert: v first == el1