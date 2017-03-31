set operations
intersection: aGroup 
	 
	| result | 
	result := self class withAll: (self entities intersection: aGroup entities). 
	result description: self description , '  intersected with ' , aGroup description. 
	^result