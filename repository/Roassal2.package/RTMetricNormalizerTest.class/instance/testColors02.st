test colors
testColors02

	| v objects es n |
	v := RTView new.
	objects := (1 to: 5).
	es := RTBox new elementsOn: objects.
	v addAll: es.

	self assert: (es collect: [ :e | e trachelShape color ]) asSet size equals: 1.

	n := RTMetricNormalizer new.
	n view: v.
	n objects: objects.
	n distinctColorUsing: #odd.
	self assert: (es collect: [ :e | e trachelShape color ]) asSet size equals: 2.