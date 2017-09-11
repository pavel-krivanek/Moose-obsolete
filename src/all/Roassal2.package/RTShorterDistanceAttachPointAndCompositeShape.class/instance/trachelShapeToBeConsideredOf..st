public - hooks
trachelShapeToBeConsideredOf: anElement
	"Return the trachel shape to be considered from the roassal element argument"
	
	^ (self hasCompositeShape: anElement)
		ifTrue: [ composedShapeSelection rtValue: anElement trachelShape shapes ]
		ifFalse: [ anElement trachelShape ]