instance creation
withAll: aCollection 
	" Answer a new instance of this class, 
	whose elements are the elements of aCollection. " 
	 
	| newCollection | 
	newCollection := self new: aCollection size. 
	newCollection addAll: aCollection. 
	^newCollection