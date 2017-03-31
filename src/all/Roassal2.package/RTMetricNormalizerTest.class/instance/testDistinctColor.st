test colors
testDistinctColor

	| v data es n |
	v := RTView new.
	data := #((1) (2) (1 2)).
	data do: [ :d |
		v addAll: (RTEllipse elementsOn: d) @ RTPopup.
	].

	"Checking RTView>>elementsFromModels:"
	self assert: (v elementsFromModels: #(1 2)) size equals: 4.

	RTGridLayout on: v elements.
	n := RTMetricNormalizer new
		view: v;
		objects: #(1 2);
		distinctColor. 

	self assert: v numberOfElements equals: 4.

	"Checking the normalizer"
	self assert: n elements size equals: 4.

	"For elements 1"
	es := v elementsFromModel: 1.
	self assert: es size equals: 2.
	self assert: (es collect: [ :e | e trachelShape color ]) asSet size equals: 1.
	
	"For elements 2"
	es := v elementsFromModel: 2.
	self assert: es size equals: 2.
	self assert: (es collect: [ :e | e trachelShape color ]) asSet size equals: 1.

	"Elements 1 and 2 have different color"
	self assert: (v elementFromModel: 1) trachelShape color ~= (v elementFromModel: 2) trachelShape color