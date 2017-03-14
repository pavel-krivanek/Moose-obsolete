accessing
contentStringAt: aName
	^ (self
		elementAt: aName
		ifAbsent: [^ '']) contentString