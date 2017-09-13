accessing
informationSources
	"Defines from which source the conveyed InformationItems are initiated."
	^ informationSources ifNil: [ informationSources := OrderedCollection new ]