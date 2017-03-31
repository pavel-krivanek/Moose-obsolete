public
constrainedDraggable
	"Make sure that the inner elements cannot escape the encompassing element"
	| i |
	self removeInteractionOfType: RTAbstractDraggable.
	i := RTConstrainedDraggable new.
	i withinParent.
	interactions add: i. 
	^ i