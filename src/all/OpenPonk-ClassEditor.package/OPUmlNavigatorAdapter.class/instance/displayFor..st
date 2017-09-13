accessing
displayFor: anObject
	^ ((self mappingFor: anObject in: self retrieveDisplayMapping)
		ifNil: [ '' ]
		ifNotNil: [ :name | name ]) , (self suffixFor: anObject)