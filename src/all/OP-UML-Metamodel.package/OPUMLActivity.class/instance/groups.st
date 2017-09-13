accessing
groups
	"Top-level ActivityGroups in the Activity."
	^ groups ifNil: [ groups := OPUMLToManyLinks on: self identity opposite: #inActivity: ]