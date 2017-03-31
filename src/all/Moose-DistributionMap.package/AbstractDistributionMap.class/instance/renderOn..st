rendering
renderOn: view
	| parts partElements shape |
	parts := self orderParts: self parts.
	shape := RTCompositeShape new.
	shape add: (RTLabel new text: #asString; height: 10).
	shape add: (RTBox new color: Color transparent; borderColor: Color gray).
	partElements := shape elementsOn: parts.
	partElements do: [ :each |
		| elements |
		view add: each.
		elements := self renderElementsFrom: each model on: view. 
		view addAll: elements.
		RTGridLayout on: elements.
		RTNest new
			on: each
			inShape: #second 
			nest: elements.	 ].
	RTFlowLayout on: partElements.
	partElements @ RTDraggable	