accessing
informationTargets
	"Defines to which target the conveyed InformationItems are directed."
	^ informationTargets ifNil: [ informationTargets := OrderedCollection new ]