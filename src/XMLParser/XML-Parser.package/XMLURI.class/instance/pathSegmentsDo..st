enumerating
pathSegmentsDo: aBlock
	self rawPathSegments do: [:each |
		aBlock value: (self percentDecode: each)]