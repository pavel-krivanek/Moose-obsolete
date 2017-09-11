public normalize size
normalizeElementWidth: metricBlock
	"metricBlock is evaluated on each element"
	^ self normalizeElementWidth: metricBlock min: 5 max: 30