private
rebuildCachedElements
	self cachedElements removeAll.
	self cachedElementsByName removeAll.
	self do: [:each |
		each isElement
			ifTrue: [self cacheElementAddedLast: each]].