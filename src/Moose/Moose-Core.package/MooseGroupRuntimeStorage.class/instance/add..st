adding
add: anElement 
	self privateAdd: anElement.
	self updateCacheFor: anElement.
	^anElement