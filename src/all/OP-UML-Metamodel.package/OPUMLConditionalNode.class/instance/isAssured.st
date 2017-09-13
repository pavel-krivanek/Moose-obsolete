accessing
isAssured
	"If true, the modeler asserts that the test for at least one Clause of the ConditionalNode will succeed."
	^ isAssured ifNil: [ isAssured := false ]