accessing
indexOfSubstring: aStringOrStringNode
	^ self string
		findString: aStringOrStringNode asString
		startingAt: 1