unmapping
unmapPrefix: aPrefix
	^ self
		unmapPrefix: aPrefix
		ifAbsent: [self errorCannotUnmapPrefix: aPrefix]