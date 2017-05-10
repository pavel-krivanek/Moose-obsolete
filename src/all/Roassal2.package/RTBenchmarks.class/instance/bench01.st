benchmarking
bench01
	"Exercizing elementsFromModel"

	"
	self new bench01
	"
	
	| v es |
	v := RTView new.
	es := RTBox new elementsOn: (1 to: 20000).
	es @ (RTHighlightable new highlight: [:obj | Array with: obj - 1 with: obj + 1 ]).
	v addAll: es.
	RTGridLayout new gapSize: 0; on: es.
	^ [v elementsFromModels: (1 to: 20000). v elementsFromModels: (1 to: 20000). v elementsFromModels: (1 to: 20000)] timeToRun
