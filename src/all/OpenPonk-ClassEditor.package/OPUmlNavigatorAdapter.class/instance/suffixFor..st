accessing
suffixFor: anObject
	^ (self mappingFor: anObject in: self retrieveSuffixMapping)
		ifNil: [ '' ]
		ifNotNil: [ :suffix | ' (' , suffix , ')' ]