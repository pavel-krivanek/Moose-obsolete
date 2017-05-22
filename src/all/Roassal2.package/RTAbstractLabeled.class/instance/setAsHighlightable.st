public configuration
setAsHighlightable
	"Make the label highlightable by moving the mouse over the element
	
	Consider the example:
	=-=-=-=-=-
	| v es |
	v := RTView new.

	es := RTBox new size: 20; color: Color blue; elementsOn: #('Hello' 'World').
	v addAll: es.
	RTHorizontalLineLayout on: es.

	es do: [ :e |
		e @ (RTLabeled new color: Color red; setAsHighlightable) ]. 
	es @ RTDraggable.
	v
	=-=-=-=-=-
	"
	highlightable := true