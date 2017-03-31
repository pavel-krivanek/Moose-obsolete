tests
testBasic02
	| es |
	es := RTBox elementsOn: (1 to: 5).
	n elements: es.
	n normalizeSize: #yourself.
	
	self assert: es last trachelShape extent equals: 5 @ 5.

	n build.
	self assert: es last trachelShape extent equals: 30 @ 30.