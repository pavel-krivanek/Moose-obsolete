accessing
ownedOperations
	"The Operations owned by the DataType."
	^ ownedOperations ifNil: [ ownedOperations := OPUMLToManyLinks on: self identity opposite: #datatype: ]