accessing
subjects
	"The subjects to which this UseCase applies. Each subject or its parts realize all the UseCases that apply to it."
	^ subjects ifNil: [ subjects := OPUMLManyToManyLinks on: self identity opposite: #useCases ]