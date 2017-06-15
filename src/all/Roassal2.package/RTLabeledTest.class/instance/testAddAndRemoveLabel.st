tests
testAddAndRemoveLabel

	| v e |
	e := RTEllipse elementOn: 'hello'.
	v := RTView new.
	v add: e.
	self deny: (RTLabeled hasLabel: e).
	
	e @ RTLabeled.
	self assert: (RTLabeled hasLabel: e).
	
	RTLabeled removeLabelFrom: e.
	self deny: (RTLabeled hasLabel: e).