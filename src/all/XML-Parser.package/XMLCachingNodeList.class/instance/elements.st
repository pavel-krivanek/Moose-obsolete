accessing
elements
	^ self copyEmpty
		addAll: self cachedElements;
		yourself