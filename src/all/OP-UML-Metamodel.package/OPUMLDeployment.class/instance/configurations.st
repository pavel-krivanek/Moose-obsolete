accessing
configurations
	"The specification of properties that parameterize the deployment and execution of one or more Artifacts."
	^ configurations ifNil: [ configurations := OPUMLToManyLinks on: self identity opposite: #deployment: ]