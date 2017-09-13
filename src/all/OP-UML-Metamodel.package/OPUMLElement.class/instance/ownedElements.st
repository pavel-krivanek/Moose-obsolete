accessing
ownedElements
	"The Elements owned by this Element."
	^ ownedElements ifNil: [ ownedElements := OPUMLToManyLinks on: self identity opposite: #owner: ]