test colors
testColorFading

	| v1 objects es1 v2 es2 |
	v1 := RTView new.
	objects := (0 to: 1).
	es1 := RTBox new elementsOn: objects.
	v1 addAll: es1.
	RTHorizontalLineLayout on: es1.
	RTMetricNormalizer new
		elements: es1;
		normalizeColor: #yourself.

	v2 := RTView new.
	objects := (10 to: 11).
	es2 := RTBox new elementsOn: objects.
	v2 addAll: es2.
	RTHorizontalLineLayout new gapSize: 0; on: es2.
	RTMetricNormalizer new
		elements: es2;
		normalizeColor: #yourself.

	es1 with: es2 do: [ :e1 :e2 | self assert: e1 trachelShape color equals: e2 trachelShape color ].
	self assert: es1 first trachelShape color equals: Color gray.
	self assert: es1 second trachelShape color equals: Color red.