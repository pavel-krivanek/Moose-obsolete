accessing
inheritedParameters
	"The formal template parameters of the extended signatures."
	^ inheritedParameters ifNil: [ inheritedParameters := OrderedCollection new ]