accessing
operands
	"Specifies a sequence of operand ValueSpecifications."
	^ operands ifNil: [ operands := OrderedCollection new ]