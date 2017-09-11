accessing
privateOutgoingMSEProperties
	^ self dependencyFM3PropertyDescription select: [ :p | p opposite isSource ]