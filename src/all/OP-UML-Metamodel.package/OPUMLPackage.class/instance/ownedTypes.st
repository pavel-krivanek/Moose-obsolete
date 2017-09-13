accessing
ownedTypes
	"References the packaged elements that are Types."
	^ ownedTypes ifNil: [ ownedTypes := OPUMLToManyLinks on: self identity opposite: #package: ]