private
uncacheElement: anElement
	self cachedElements remove: anElement.
	self
		cachedElementsByNameAt: anElement name
		remove: anElement.
	anElement hasPrefix
		ifTrue: [
			self
				cachedElementsByNameAt: anElement localName
				remove: anElement].