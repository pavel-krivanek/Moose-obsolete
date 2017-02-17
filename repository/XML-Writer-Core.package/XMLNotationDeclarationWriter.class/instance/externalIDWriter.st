accessing
externalIDWriter
	^ externalIDWriter ifNil: [externalIDWriter := XMLNotationExternalIDWriter new]