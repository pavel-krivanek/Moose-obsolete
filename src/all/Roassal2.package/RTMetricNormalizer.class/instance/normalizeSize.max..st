public normalize size
normalizeSize: metricBlock max: maxValue
	"metricBlock is evaluated on each node model. 
	 minValue and maxValue are integer representing the minimum and maximum size in pixels for each node"
	self normalizeSize: metricBlock min: 5 max: maxValue using: #yourself