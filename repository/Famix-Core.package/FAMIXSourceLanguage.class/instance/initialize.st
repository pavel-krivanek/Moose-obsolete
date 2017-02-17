initialize-release
initialize
	super initialize.
	sourcedEntities := FMNullMultivalueLink on: self opposite: #declaredSourceLanguage: selector: #sourcedEntities