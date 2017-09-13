accessing
structuredNodeInputs
	"The InputPins owned by the StructuredActivityNode."
	^ structuredNodeInputs ifNil: [ structuredNodeInputs := OrderedCollection new ]