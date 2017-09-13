accessing
nodes
	"ActivityNodes coordinated by the Activity."
	^ nodes ifNil: [ nodes := OPUMLToManyLinks on: self identity opposite: #activity: ]