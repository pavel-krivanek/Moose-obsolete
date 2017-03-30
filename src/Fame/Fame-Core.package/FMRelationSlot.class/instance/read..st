internal
read: anObject

	| slotValue | 
	
	slotValue := thisContext object: anObject instVarAt: index.
	
	^ self lazyInitializationFor: anObject slotValue: slotValue.
	
