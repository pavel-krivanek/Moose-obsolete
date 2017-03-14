public - adding
addShape: aShape
	"Add a shape in the composite. Shapes added using this method have all the same center"
	^ self addShape: aShape translateBy: 0 @ 0