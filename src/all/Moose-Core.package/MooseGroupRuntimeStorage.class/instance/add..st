adding
add: anElement 
	self privateAdd: anElement.
	self updateCacheOnAddingOf: anElement.
	^anElement