private
truncatedFloatForFraction: aFraction
	^ (((aFraction * 100) truncated) / 100 ) asFloat 