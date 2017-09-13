accessing
preconditions
	"An optional set of Constraints specifying what must be fulfilled before the Behavior is invoked."
	^ preconditions ifNil: [ preconditions := OrderedCollection new ]