tests
testDoWithIndexAndWithIndexDo
	"Isn't that odd? Legacy method?"

	| t group el1 el2 el3 |
	t := OrderedCollection new.
	group := MooseGroup new.
	group add: (el1 := MooseEntity new).
	group add: (el2 := MooseEntity new).
	group add: (el3 := MooseEntity new).
	self
		assert:
			(group
				doWithIndex: [ :x :i | 
					t
						add:
							{x.
							i} ])
		equals:
			(group
				withIndexDo: [ :x :i | 
					t
						add:
							{x.
							i} ])