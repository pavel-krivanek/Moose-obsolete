accessing
isControl
	"Indicates whether the Pin provides data to the Action or just controls how the Action executes."
	^ isControl ifNil: [ isControl := false ]