public
snapToGrid
	"Make the elements draggable and positioned on a grid"
	| i cls |
	cls := RTDraggable.
	self removeInteractionOfType: cls.
	i := RTDraggableSnapToGrid new.
	interactions add: i.
	^ i