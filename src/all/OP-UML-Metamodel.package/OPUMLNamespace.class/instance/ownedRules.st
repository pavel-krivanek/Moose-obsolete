accessing
ownedRules
	"Specifies a set of Constraints owned by this Namespace."
	^ ownedRules ifNil: [ ownedRules := OPUMLToManyLinks on: self identity opposite: #context: ]