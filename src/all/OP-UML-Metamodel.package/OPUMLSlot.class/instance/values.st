accessing
values
	"The value or values held by the Slot."
	^ values ifNil: [ values := OrderedCollection new ]