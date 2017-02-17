accessing
version
	(version isNil
		or: [version isEmpty])
		ifTrue: [version := '1.0'].
	^ version.