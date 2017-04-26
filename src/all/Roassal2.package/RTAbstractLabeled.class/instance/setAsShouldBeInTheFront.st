public configuration
setAsShouldBeInTheFront
	"This method let the label trachel shape to be always in the front. 
	
	Consider the example:
	=-=-=-=-=-
	v := RTView new.

	es := RTBox new size: 20; color: Color blue; elementsOn: #('Hello' 'World').
	v addAll: es.
	RTHorizontalLineLayout on: es.

	es do: [ :e |
		e @ (RTLabeled new color: Color red; setAsHighlightable; setAsShouldBeInTheFront) ]. 
	es @ RTDraggable.
	v
	=-=-=-=-=-
	Try to remove the call to #setAsShouldBeInTheFront to see the effect by drag and dropping elements
	"
	shouldBeInTheBack := false