accessing
isDeterminate
	"If true, the modeler asserts that the test for at most one Clause of the ConditionalNode will succeed."
	^ isDeterminate ifNil: [ isDeterminate := false ]