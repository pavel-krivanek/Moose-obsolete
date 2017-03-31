hooks
computeColorForNode
	^ Color gray: ((5 - (self currentDepth + 1 min: 5)) / 5.0) asFloat