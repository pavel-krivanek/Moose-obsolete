accessing
bodies
	"The set of ExecutableNodes that are executed if the test evaluates to true and the Clause is chosen over other Clauses within the ConditionalNode that also have tests that evaluate to true."
	^ bodies ifNil: [ bodies := OrderedCollection new ]