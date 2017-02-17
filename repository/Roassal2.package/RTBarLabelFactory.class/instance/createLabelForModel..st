computing
createLabelForModel: anObject
	"Take as argument the model object of the element. Return the label"

	| lbl |
	lbl := self labelShape elementOn: anObject.
	lbl rotateByDegrees: (rotation rtValue: anObject).
	^ lbl