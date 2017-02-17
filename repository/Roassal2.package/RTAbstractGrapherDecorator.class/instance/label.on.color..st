utility
label: aString on: position color: aColor
	"Add a label in the view"
	| e |
	e := (RTLabel new color: aColor) elementOn: aString.
	e translateTo: position.
	builder view add: e.
	^ e