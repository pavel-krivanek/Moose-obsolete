accessing
incomingMSEProperties
	self incomingMSEPropertiesCache ifNil: [ self incomingMSEPropertiesCache: (self dependencyFM3PropertyDescription select: [ :p | p opposite isTarget ]) ].
	^ self incomingMSEPropertiesCache