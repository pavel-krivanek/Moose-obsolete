accessing
isControlType
	"Indicates whether the type of the ObjectNode is to be treated as representing control values that may traverse ControlFlows."
	^ isControlType ifNil: [ isControlType := false ]