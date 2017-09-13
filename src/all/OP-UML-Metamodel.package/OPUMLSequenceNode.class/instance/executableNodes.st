accessing
executableNodes
	"The ordered set of ExecutableNodes to be sequenced."
	^ executableNodes ifNil: [ executableNodes := OrderedCollection new ]