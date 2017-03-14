hooks
initializeElementForCenter: element
	| totalD spacing|
	totalD := 0 @ 0.
	element when: TRMouseDragStart do: [ :event | totalD := 0 @ 0 ].
	spacing := self gridSizeFor: element.
	element
		when: TRMouseDragging
		do:
			[ :event | 
			| d t |
			t := RTGroup withAll: groupToDrag.
			(t includes: element)
				ifFalse: [ t add: element ].
			d := element encompassingRectangle center.
			d := d + (element view canvas camera distanceFromPixelToSpace: event step).
			totalD := totalD + d.
			d := spacing * ((totalD x / spacing) rounded @ (totalD y / spacing) rounded).
			totalD := totalD - d.
			d := d - element encompassingRectangle center.
			t translateBy: d.
			event signalUpdate ]