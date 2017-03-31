public
sortObjectsAndDefineNumbers
	self defaultMetric.
	self objects: (self objects copy sort: [ :o1 :o2 | (self metric rtValue: o1) < (self metric rtValue: o2)  ]).
	self numbers: (self objects collect: [ :o | self metric rtValue: o ]). 	
	self sorted: true.
