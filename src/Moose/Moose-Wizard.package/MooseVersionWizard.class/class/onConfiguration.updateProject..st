instance creation
onConfiguration: aClass updateProject: trueOrFalse
	"self onConfiguration: ConfigurationOfMoose updateProject: false"


	^ super new configuration: aClass; initializeContent: trueOrFalse ; open