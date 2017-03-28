removing
remove: anElement ifAbsent: exceptionBlock 
	 
	| index | 
	index := elements 
		findFirst: [:each | anElement = each] 
		ifAbsent: exceptionBlock. 
	elements at: index put: Tombstone. 
	tally := tally - 1. 
	^anElement