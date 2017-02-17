*Famix-Implementation
accessingMethods

	^ self incomingAccesses collectAsSet: [:anAccess | anAccess accessor].
