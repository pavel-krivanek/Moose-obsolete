set operations
intersect: aGroup 
	self deprecated: 'use intersection: instead, as it is polymorphic with the Collection protocol'.
	^ self intersection: aGroup 