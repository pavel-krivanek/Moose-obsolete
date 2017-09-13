accessing
ownedMembers
	"A collection of NamedElements owned by the Namespace."
	^ ownedMembers ifNil: [ ownedMembers := OPUMLToManyLinks on: self identity opposite: #namespace: ]