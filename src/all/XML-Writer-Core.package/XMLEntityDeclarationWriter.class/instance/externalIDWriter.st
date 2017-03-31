accessing
externalIDWriter
	^ externalIDWriter ifNil: [externalIDWriter := XMLExternalIDWriter new]