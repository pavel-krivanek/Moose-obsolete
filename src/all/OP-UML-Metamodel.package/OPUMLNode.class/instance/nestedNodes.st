accessing
nestedNodes
	"The Nodes that are defined (nested) within the Node."
	^ nestedNodes ifNil: [ nestedNodes := OrderedCollection new ]