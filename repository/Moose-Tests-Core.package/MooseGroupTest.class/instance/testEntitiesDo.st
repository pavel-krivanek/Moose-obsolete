tests
testEntitiesDo
	| t group el1 el2 el3 v |
	t := OrderedCollection new.
	group := MooseGroup new.
	group add: (el1 := MooseEntity new).
	group add: (el2 := MooseEntity new).
	group add: (el3 := MooseEntity new).
	group entitiesDo: [ :e | t add: e ].
	self
		assert: t asArray
		equals:
			{el1.
			el2.
			el3}