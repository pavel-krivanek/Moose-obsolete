tests
testCollect
	| t group el1 el2 el3 |
	t := OrderedCollection new.
	group := MooseGroup new.
	group add: (el1 := MooseEntity new).
	group add: (el2 := MooseEntity new).
	group add: (el3 := MooseEntity new).
	self assert: (group collect: #name) entities asArray equals: #(#noname #noname #noname)