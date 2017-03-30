internal
read: anObject

	| slotValue | 
	
	slotValue := thisContext object: anObject instVarAt: index.
	^ slotValue
	"^ self lazyInitializationFor: anObject slotValue: slotValue".
	
