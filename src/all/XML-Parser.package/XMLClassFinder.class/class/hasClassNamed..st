testing
hasClassNamed: aClassName
	self
		classNamed: aClassName
		ifAbsent: [^ false].
	^ true.