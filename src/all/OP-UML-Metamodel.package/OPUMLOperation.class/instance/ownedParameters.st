accessing
ownedParameters
	"The parameters owned by this Operation."
	^ ownedParameters ifNil: [ ownedParameters := OPUMLToManyLinks on: self identity opposite: #operation: ]