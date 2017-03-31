properties
hasTwoIntersectionWithSegm: segm
	|i|
	i := 0.
	self edges do:[:e | (e intersect: segm) isNotNil ifTrue:[ i := i + 1 ] ].
	^ (i = 2 or:[ i = 3])