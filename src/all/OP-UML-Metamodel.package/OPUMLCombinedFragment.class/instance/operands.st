accessing
operands
	"The set of operands of the combined fragment."
	^ operands ifNil: [ operands := OrderedCollection new ]