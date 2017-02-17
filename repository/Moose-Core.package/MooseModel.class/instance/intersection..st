set operations
intersection: aGroup 
	 
	| result | 
	result := MooseGroup withAll: (self entities intersection: aGroup entities). 
	result description: self description , '  intersected with ' , aGroup description. 
	^result