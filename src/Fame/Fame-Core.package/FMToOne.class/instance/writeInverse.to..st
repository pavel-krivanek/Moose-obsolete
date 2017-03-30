internal
writeInverse: newValue to: anObject

	self read: anObject. "lazy evaluation"
	^anObject instVarAt: index put: newValue