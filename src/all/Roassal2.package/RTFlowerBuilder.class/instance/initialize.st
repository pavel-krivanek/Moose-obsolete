initialization
initialize
	super initialize.
	self shape circle.
	line := RTShapeBuilder new.
	line line.
	self interaction draggable; popup;
		when: TRMouseClick do: [:evt | self addOrRemove: evt element ].