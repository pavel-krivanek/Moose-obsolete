accessing
includes
	"The Include relationships owned by this UseCase."
	^ includes ifNil: [ includes := OPUMLToManyLinks on: self identity opposite: #includingCase: ]