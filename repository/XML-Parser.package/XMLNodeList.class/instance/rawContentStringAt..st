accessing
rawContentStringAt: aName
	^ (self
		elementAt: aName
		ifAbsent: [^ '']) rawContentString