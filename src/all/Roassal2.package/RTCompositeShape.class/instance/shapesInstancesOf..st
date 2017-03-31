public - forwarding
shapesInstancesOf: class
	"Return the list of shapes instances or subinstances of the argument class"
	^ self allShapes select: [ :s | s isKindOf: class ]