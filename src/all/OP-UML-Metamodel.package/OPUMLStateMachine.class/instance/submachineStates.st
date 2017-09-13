accessing
submachineStates
	"References the submachine(s) in case of a submachine State. Multiple machines are referenced in case of a concurrent State."
	^ submachineStates ifNil: [ submachineStates := OPUMLToManyLinks on: self identity opposite: #submachine: ]