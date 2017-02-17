accessing
strings
	^ self
		select: [:each | each isStringNode]
		thenCollect: [:each | each string]