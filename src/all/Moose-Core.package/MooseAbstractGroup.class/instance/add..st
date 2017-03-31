adding/removing
add: anItem 

	self entityStorage add: anItem.
	self privateState flushGroups. 
	^ anItem