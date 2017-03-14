accessing
text: aText
	| oldExtent newExtent |
	oldExtent := self extent.
	text := aText.
	self resetCache.
	newExtent := self extent.
	(newExtent ~= oldExtent) ifTrue: [ 
		self triggerCallbacksForNewExtent: newExtent oldExtent: oldExtent ].
