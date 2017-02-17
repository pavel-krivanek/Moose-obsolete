tests
testGroupedBy
	| group v |
	group := MooseGroup new.
	group addAll: (1 to: 5).
	self assert: group size equals: 5.
	v := group groupedBy: #odd.
	self assert: v isDictionary.
	self assert: v keys size equals: 2.
	self assert: (v values first isKindOf: MooseGroup).
	self assert: (v values second isKindOf: MooseGroup).
	self assert: (v at: true) asArray equals: #(1 3 5).
	self assert: (v at: false) asArray equals: #(2 4)