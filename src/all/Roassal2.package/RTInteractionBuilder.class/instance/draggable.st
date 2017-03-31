public
draggable
	| i |
	self removeInteractionOfType: RTAbstractDraggable.
	i := RTDraggable new.
	self addInteraction: i.
	^ i