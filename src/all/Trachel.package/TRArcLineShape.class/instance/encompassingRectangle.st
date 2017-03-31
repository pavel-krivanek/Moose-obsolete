accessing
encompassingRectangle
	| mid v |
	mid := line pointForBalance: 0.5.
	v := line vector.
	normal := RTLineSegment from: mid to: mid + (distance * v normal).
	^ Rectangle
		encompassing: (Array with: line from with: line to with: normal to)