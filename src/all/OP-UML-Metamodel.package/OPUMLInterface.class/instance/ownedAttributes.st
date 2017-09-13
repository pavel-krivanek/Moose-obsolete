accessing
ownedAttributes
	"The attributes (i.e., the Properties) owned by the Interface."
	^ ownedAttributes ifNil: [ ownedAttributes := OPUMLToManyLinks on: self identity opposite: #interface: ]