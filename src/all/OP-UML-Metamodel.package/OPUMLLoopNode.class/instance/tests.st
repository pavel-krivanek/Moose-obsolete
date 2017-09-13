accessing
tests
	"The set of ExecutableNodes executed in order to provide the test result for the loop."
	^ tests ifNil: [ tests := OrderedCollection new ]