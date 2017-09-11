convenient
stick: es1 onTheLeftOf: es2
	"Both es1 and es2 could be one element, a group of elements, or a group of Trachel shapesl "
	(RTConstraint on: es1 background: es2) leftOf; stick