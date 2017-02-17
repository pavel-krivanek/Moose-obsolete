tests
testOpenTitled
	| v |
	v :=  RTBuilder new view.
	window := v openTitled: 'hello'