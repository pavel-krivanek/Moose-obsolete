tests
testremoveFromElements
	| v es  |
	es := RTEllipse elementsOn: #(1 2 3).
	v := RTView new.
	v addAll: es.
	self deny: (RTLabeled hasLabel: es anyOne).
	
	es @ RTLabeled.
	self assert: (RTLabeled hasLabel: es anyOne).
	
	RTLabeled removeLabelFromElements: es.
	self deny: (RTLabeled hasLabel: es anyOne).