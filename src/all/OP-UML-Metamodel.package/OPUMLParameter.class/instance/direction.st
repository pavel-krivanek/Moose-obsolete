accessing
direction
	"Indicates whether a parameter is being sent into or out of a behavioral element."
	^ direction ifNil: [ direction := OPUMLParameterDirectionKind new in ]