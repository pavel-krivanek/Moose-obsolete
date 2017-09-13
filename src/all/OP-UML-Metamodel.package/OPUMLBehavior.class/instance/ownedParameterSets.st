accessing
ownedParameterSets
	"The ParameterSets owned by this Behavior."
	^ ownedParameterSets ifNil: [ ownedParameterSets := OrderedCollection new ]