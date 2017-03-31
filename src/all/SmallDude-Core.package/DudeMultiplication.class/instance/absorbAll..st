initialize-release
absorbAll: aMultiplication 
	 
	self ~= aMultiplication 
		ifTrue: [self duplications addAll: aMultiplication duplications]