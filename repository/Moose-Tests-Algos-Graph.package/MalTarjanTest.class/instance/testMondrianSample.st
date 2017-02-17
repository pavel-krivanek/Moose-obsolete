example
testMondrianSample
	| view firstGraph windowAndView nodes actionBlock |
	windowAndView := MalTarjan mondrianSample.
	window := windowAndView first.
	view := windowAndView second.
	self assert: view root nodes size equals: 5.
	firstGraph := view root nodes first.
	nodes := firstGraph nodes.
	self assert: nodes size equals: 8.
	self assert: (nodes allSatisfy: [ :n | (n shape fillColorFor: n) == Color white ]).
	actionBlock := firstGraph announcer menuItems first value.
	self shouldnt: [ actionBlock value: firstGraph model ] raise: Error.
	self assert: (nodes noneSatisfy: [ :n | (n shape fillColorFor: n) == Color white ])