accessing
members
	"A collection of NamedElements identifiable within the Namespace, either by being owned or by being introduced by importing or inheritance."
	^ members ifNil: [ members := OrderedCollection new ]