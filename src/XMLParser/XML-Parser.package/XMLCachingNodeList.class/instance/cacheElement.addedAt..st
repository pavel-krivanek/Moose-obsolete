private
cacheElement: anElement addedAt: anIndex
	anIndex = self size
		ifTrue: [^ self cacheElementAddedLast: anElement].

	(self findElementAfterIndex: anIndex)
		ifNil: [self cachedElements addLast: anElement]
		ifNotNil: [:elementAfter |
			self cachedElements
				add: anElement
				before: elementAfter].
	self
		cachedElementsByNameAt: anElement name
		add: anElement
		beforeNextAfterIndex: anIndex.
	anElement hasPrefix
		ifTrue: [
			self
				cachedElementsByNameAt: anElement localName
				add: anElement
				beforeNextAfterIndex: anIndex].