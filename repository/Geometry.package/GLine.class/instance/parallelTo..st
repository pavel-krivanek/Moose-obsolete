properties
parallelTo: aLine

	^ (self a isZero & aLine a isZero) or:
	[ (self b isZero & aLine b isZero) or:
	[ (aLine a isZero | aLine b isZero) not and:
	[ (self a / aLine a) = (self b / aLine b) ] ] ]