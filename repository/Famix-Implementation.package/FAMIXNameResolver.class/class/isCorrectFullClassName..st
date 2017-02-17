language independent unique naming
isCorrectFullClassName: aClassName
	^(aClassName reverse
		indexOfSubCollection: self FAMIX2NamespaceSeparator
		startingAt: 1) > 0