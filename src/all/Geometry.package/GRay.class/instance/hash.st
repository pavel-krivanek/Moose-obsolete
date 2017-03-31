comparing
hash
	^ ( self origin hash hashMultiply +
		(self origin bearingToPoint: self direction) hash ) hashMultiply
