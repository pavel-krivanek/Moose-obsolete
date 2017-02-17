tests
testIndexOf
	| group el1 el2 el3 v |
	group := MooseGroup new.
	group add: (el1 := MooseEntity new).
	group add: el1.
	group add: (el2 := MooseEntity new).
	group add: (el3 := MooseEntity new).
	self assert: (group indexOf: el1) equals: 1.
	self assert: (group indexOf: el2) equals: 3.
	self assert: (group indexOf: el3) equals: 4