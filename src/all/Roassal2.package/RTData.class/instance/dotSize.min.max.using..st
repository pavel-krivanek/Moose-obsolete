public - effects
dotSize: metricAsBlockOrSymbol min: minValue max: maxValue using: transformation
	"Set the size of the dots for each element"
	elementActions add: [ :elems |
		RTMetricNormalizer new
			elements: elems;
			normalizeSize: metricAsBlockOrSymbol min: minValue max: maxValue using: transformation ]