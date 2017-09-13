accessing
clauses
	"The set of Clauses composing the ConditionalNode."
	^ clauses ifNil: [ clauses := OrderedCollection new ]