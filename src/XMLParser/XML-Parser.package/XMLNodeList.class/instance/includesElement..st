testing
includesElement: aName
	self
		elementAt: aName
		ifAbsent: [^ false].
	^ true.