tests
testAddingAfterLayout

	| v s es |
	v := RTView new.
	s := RTCompositeShape new.
	s add: RTBox new.
	"s := RTEllipse new."
	es := s elementsOn: (1 to: 2).
	RTGridLayout on: es.
	v add: es first.
	v add: es second.

	self assert: (es collect: [ :e | e position asIntegerPoint ]) asArray equals: (Array with: (2@2) with: (12@2))