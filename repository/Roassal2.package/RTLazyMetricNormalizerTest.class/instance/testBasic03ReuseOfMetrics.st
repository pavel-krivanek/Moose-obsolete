tests
testBasic03ReuseOfMetrics
	| es es2 |
	es := RTBox elementsOn: (1 to: 5).
	n elements: es.
	n normalizeSize: #yourself.
	n build.
	
	es2 := RTBox elementsOn: (1 to: 5).
	n elements: es2.
	n build.

	self assert: es2 last trachelShape extent equals: 30 @ 30.