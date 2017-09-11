public normalize size
normalizeElementWidth: metricBlock max: maxValue
	"metricBlock is evaluated on each node. 
	 maxValue is an integer representing the maximum size in pixels for each node"
	self normalizeElementWidth: metricBlock min: 5 max: maxValue