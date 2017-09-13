accessing
structuredNodeOutputs
	"The OutputPins owned by the StructuredActivityNode."
	^ structuredNodeOutputs ifNil: [ structuredNodeOutputs := OrderedCollection new ]