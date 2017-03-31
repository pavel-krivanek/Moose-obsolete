private
addDraggableInteractions
	| draggable w1 w2 |
	draggable := RTConstrainedDraggable new.
	draggable rectangle: [ 
		w1 := (cursorMin encompassingRectangle width/2)@0.
		(extremity1 position - w1) corner: (extremity2 position+w1) ].
	draggable afterBlock: [ self eventForCursorMin: true ].
	cursorMin @ draggable.
	cursorMin translateTo: 0 @ 0.

	draggable := RTConstrainedDraggable new.
	draggable rectangle: [
		w2 := (cursorMax encompassingRectangle width/2)@0.
		(extremity1 position - w2) corner: (extremity2 position+w2) ].
	draggable afterBlock: [ self eventForCursorMax: true ].
	cursorMax @ draggable.
	cursorMax translateTo: 200 @ 0.
	
	draggable := RTConstrainedDraggable new.
	draggable rectangle: [ extremity1 position corner: extremity2 position].
	draggable afterBlock: [ self eventForLineCursor ].
	lineCursor @ draggable.
	lineCursor translateTo: 100@0.
	lineCursor trachelShape width: 200.
	