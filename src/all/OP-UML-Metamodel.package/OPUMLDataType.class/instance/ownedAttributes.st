accessing
ownedAttributes
	"The attributes owned by the DataType."
	^ ownedAttributes ifNil: [ ownedAttributes := OPUMLToManyLinks on: self identity opposite: #datatype: ]