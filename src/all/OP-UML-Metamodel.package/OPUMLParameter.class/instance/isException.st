accessing
isException
	"Tells whether an output parameter may emit a value to the exclusion of the other outputs."
	^ isException ifNil: [ isException := false ]