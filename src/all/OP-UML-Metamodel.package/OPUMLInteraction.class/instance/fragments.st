accessing
fragments
	"The ordered set of fragments in the Interaction."
	^ fragments ifNil: [ fragments := OPUMLToManyLinks on: self identity opposite: #enclosingInteraction: ]