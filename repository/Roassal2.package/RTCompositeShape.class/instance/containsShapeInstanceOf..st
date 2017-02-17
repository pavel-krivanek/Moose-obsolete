public - forwarding
containsShapeInstanceOf: class
	"Return true if the shape contains at least one of shape, subclass of the argument class"
	^ (self shapesInstancesOf: class) notEmpty