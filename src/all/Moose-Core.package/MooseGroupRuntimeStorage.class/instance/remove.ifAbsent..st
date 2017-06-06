removing
remove: anElement ifAbsent: exceptionBlock
	self updateCacheOnRemovalOf: anElement.
	elements remove: anElement.
	^ anElement