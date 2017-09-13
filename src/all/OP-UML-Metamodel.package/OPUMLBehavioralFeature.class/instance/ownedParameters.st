accessing
ownedParameters
	"The ordered set of formal Parameters of this BehavioralFeature."
	^ ownedParameters ifNil: [ ownedParameters := OrderedCollection new ]