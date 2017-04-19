tests
testBasic

	| v cs i |
	cs := Collection withAllSubclasses.
	v := RTView new.
	v addAll: (RTBox elementsOn: cs).
	RTGridLayout on: v elements.
	v elements @ RTPopup.
	i := RTHighlightElementsInView new.
	v @  i.
	
	self assert: (v elements collect: [ :e | e trachelShape color ] as: Set) size equals: 1.
	
	i highlightElementsUsing: '*Collection*'.
	self assert: (v elements collect: [ :e | e trachelShape color ] as: Set) size equals: 2.

	i highlightElementsUsing: 'Hash'.
	self assert: (v elements collect: [ :e | e trachelShape color ] as: Set) size equals: 2.
	
	i highlightElementsUsing: '*Array*'.
	self assert: (v elements collect: [ :e | e trachelShape color ] as: Set) size equals: 3.
	
	i highlightElementsUsing: ''.
	self assert: (v elements collect: [ :e | e trachelShape color ] as: Set) size equals: 1.