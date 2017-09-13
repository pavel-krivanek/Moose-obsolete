accessing
ownedParameterSets
	"The ParameterSets owned by this BehavioralFeature."
	^ ownedParameterSets ifNil: [ ownedParameterSets := OrderedCollection new ]