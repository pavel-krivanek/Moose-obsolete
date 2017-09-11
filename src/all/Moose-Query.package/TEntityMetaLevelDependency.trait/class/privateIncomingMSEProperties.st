accessing
privateIncomingMSEProperties
	^ self dependencyFM3PropertyDescription select: [ :p | p opposite isTarget ]