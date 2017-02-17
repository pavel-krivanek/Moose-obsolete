*Famix-Implementation
readAccesses
	
	^self incomingAccesses select: [:each | each isRead]