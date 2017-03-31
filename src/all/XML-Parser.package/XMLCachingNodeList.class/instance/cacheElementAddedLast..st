private
cacheElementAddedLast: anElement
	self cachedElements addLast: anElement.
	self
		cachedElementsByNameAt: anElement name
		addLast: anElement.
	anElement hasPrefix
		ifTrue: [
			self
				cachedElementsByNameAt: anElement localName
				addLast: anElement].