enumerating
selectFirst: anInteger 
	 
	self flag: #patched. "VW uses sliceTo:, which is a copyFrom:To: with checked indices. Not the case here"
	^self class withAll: (self entities copyFrom: 1 to: anInteger)