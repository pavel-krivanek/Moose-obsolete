accessing
variables
	"Top-level Variables defined by the Activity."
	^ variables ifNil: [ variables := OPUMLToManyLinks on: self identity opposite: #activityScope: ]