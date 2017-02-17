tests
testEnumeration

	| t group el1 el2 el3 v |
	t := OrderedCollection new.
	group := MooseGroup new.
	group add: (el1 := MooseEntity new).
	group add: (el2 := MooseEntity new).
	group add: (el3 := MooseEntity new).

	self assert: group first == el1.
	self assert: group second == el2.
	self assert: group third == el3.
	
	self assert: group first == (group at: 1).
	self assert: group second ==  (group at: 2).
	self assert: group third ==  (group at: 3).