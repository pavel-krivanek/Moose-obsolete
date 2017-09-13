accessing
isOrdered
	"Indicates whether the order of the input collection should determine the order in which the reducer Behavior is applied to its elements."
	^ isOrdered ifNil: [ isOrdered := false ]