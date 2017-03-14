actions - replacing
replaceShapeBy: anotherTrachelShape
	"Replace a shape by another one. The new shape get the position and the extent of the previous shape"
	
	"
	Here is an example:
| v s |
v := RTView new.
s := RTVisualID new.
v add: (s elementOn: 'ignacio').
v add: (s elementOn: 'ignacia').

es := v elements.
RTGridLayout on: es.

es @ RTPopup.

es when: TRMouseClick do: [ :evt | evt element trachelShape replaceShapeBy: (TREllipseShape new color: Color red). v signalUpdate ].
^ v

	"
	
	self canvas addShape: anotherTrachelShape.
	anotherTrachelShape extent: self extent.
	self remove.
	anotherTrachelShape translateTo: self position