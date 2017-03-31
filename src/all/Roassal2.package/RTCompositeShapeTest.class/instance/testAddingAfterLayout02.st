tests
testAddingAfterLayout02

	| v s es |
	v := RTView new.
	s := RTCompositeShape new.
	s add: RTBox new.
	"s := RTEllipse new."
	es := s elementsOn: (1 to: 2).
	v add: es first.
	v add: es second.
	RTGridLayout on: es.

	self assert: (es collect: [ :e | e position asIntegerPoint ]) asArray equals: (Array with: (2@2) with: (12@2))