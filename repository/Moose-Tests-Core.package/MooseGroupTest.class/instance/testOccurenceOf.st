tests
testOccurenceOf
	| t group el1 el2 el3 v |
	t := OrderedCollection new.
	group := MooseGroup new.
	group add: (el1 := MooseEntity new).
	group add: el1.
	group add: (el2 := MooseEntity new).
	group add: (el3 := MooseEntity new).
	self assert: (group occurrencesOf: el1) equals: 2.
	self assert: (group occurrencesOf: el2) equals: 1.
	self assert: (group occurrencesOf: MooseEntity new) isZero