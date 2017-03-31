accessing
classNamed: aClassName
	^ self
		classNamed: aClassName
		ifAbsent: [nil]