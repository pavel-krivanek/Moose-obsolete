*Famix-Extensions-navigation
incomingAccesses
	^ self privateState 
		cacheAt: #incomingAccesses
		ifAbsentPut: [ attributes flatCollect: [ :each | each incomingAccesses ] ]