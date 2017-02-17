accessing
shape: aRoassalShape
	"Useful to set a shape in the builder. For example, this method may be used when overriding the method createShapeBuilder in a Builder"
	shape := aRoassalShape.
	shapeInitializer rtValue: shape.
	^ aRoassalShape