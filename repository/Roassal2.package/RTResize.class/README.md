Adjust the size of the Elements.

[ [ [ 
	values := #(35 26 5 18 17 60 36 13 16 28 29 3 8 0 3 2 14 12 13 17 1 9 3 3 4 1 1 1 2 1 1 61).
	v := RTView new.
	n := RTMultiLinearColorForIdentity new objects: values.
	shape := RTBox new color: n; size: #yourself.
	es := shape elementsOn: values.
	v addAll: es.
	RTResize new elements: es; sameSize.
	RTHorizontalLineLayout new gapSize: 0; on: es.
	
	v
 ] ] ]