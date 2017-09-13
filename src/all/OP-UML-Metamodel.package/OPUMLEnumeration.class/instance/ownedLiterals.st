accessing
ownedLiterals
	"The ordered set of literals owned by this Enumeration."
	^ ownedLiterals ifNil: [ ownedLiterals := OPUMLToManyLinks on: self identity opposite: #enumeration: ]