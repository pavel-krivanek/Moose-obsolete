tests
testReject
	| t group el1 el2 el3 v |
	t := OrderedCollection new.
	group := MooseModel new.
	group add: (el1 := MooseEntity new).
	group add: (el2 := MooseEntity new).
	group add: (el3 := MooseEntity new).
	v := group reject: [ :el | el == el1 ].
	self assert: v size equals: 2.
	self
		assert:
			(v
				includesAll:
					{el2.
					el3})