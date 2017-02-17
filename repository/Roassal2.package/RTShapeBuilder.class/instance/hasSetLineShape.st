testing
hasSetLineShape
	"A bit hackish..."
	^ (shape isKindOf: RTAbstractLine) or: [ (shape isKindOf: RTCompositeShape) and: [ shape allShapes anyOne isKindOf: RTAbstractLine ] ]