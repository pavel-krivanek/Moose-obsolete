accessing
ownedAttributes
	"The attributes (i.e., the Properties) owned by the Class."
	^ ownedAttributes ifNil: [ ownedAttributes := OPUMLToManyLinks on: self identity opposite: #owningClass: ]