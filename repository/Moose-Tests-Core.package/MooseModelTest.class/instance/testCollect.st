tests
testCollect
	| t group el1 el2 el3 v |
	t := OrderedCollection new.
	group := MooseModel new.
	group add: (el1 := MooseEntity new).
	group add: (el2 := MooseEntity new).
	group add: (el3 := MooseEntity new).
	self assert: (group collect: #name) asArray equals: #(#noname #noname #noname)