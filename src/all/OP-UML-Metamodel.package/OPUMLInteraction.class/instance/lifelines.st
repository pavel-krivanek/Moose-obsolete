accessing
lifelines
	"Specifies the participants in this Interaction."
	^ lifelines ifNil: [ lifelines := OPUMLToManyLinks on: self identity opposite: #interaction: ]