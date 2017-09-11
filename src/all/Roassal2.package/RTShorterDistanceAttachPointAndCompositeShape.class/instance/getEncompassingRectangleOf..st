public - hooks
getEncompassingRectangleOf: anElement
	"Return the rectangle of the trachel shape that should be considered"
	^ (self trachelShapeToBeConsideredOf: anElement) encompassingRectangle
	