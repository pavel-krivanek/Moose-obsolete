accessing
elementAt: aName
	^ self
		elementAt: aName
		ifAbsent: [self defaultValue]