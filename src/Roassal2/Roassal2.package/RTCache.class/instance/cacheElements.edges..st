private
cacheElements: someElements edges: someEdges
	"This method is assuming all the elements belong to the same view"
	| view newElement elements edges |
	
	elements := someElements asGroup.
	edges := someEdges asGroup.
	view := someElements anyOne view.
	canvas := view canvas.
	trachelShapes := canvas shapes.
	newElement := (RTBitmap new form: (self getFormElements: elements, edges)) element.
	self addEvents: newElement.
	newElement translateTo: canvas encompassingRectangle center.
	view removeAllElements.
	view add: newElement.
	^ newElement.