tests
testBasic02

	| es |
	es := (RTBox new size: #yourself) elementsOn: (0 to: 1000 by: 100).
	view addAll: es.
	RTFlowLayout on: es.
	view @ RTDoubleScrollBar