accessing
tests
	"The set of ExecutableNodes that are executed in order to provide a test result for the Clause."
	^ tests ifNil: [ tests := OrderedCollection new ]