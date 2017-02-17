as yet unclassified
outgoingMSEProperties
	self outgoingMSEPropertiesCache ifNil: [ self outgoingMSEPropertiesCache: (self dependencyFM3PropertyDescription select: [ :p | p opposite isSource ]) ].
	^ self outgoingMSEPropertiesCache