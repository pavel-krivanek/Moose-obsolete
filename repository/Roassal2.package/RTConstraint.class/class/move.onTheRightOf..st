convenient
move: es1 onTheRightOf: es2
	"Both es1 and es2 could be one element, a group of elements, or a group of Trachel shapesl "
	(RTConstraint on: es1 background: es2) rightOf; move