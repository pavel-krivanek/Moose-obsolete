accessing
write: aValue to: anObject

	self read: anObject. "to invoke lazy initialization"
	^ super write: aValue to: anObject