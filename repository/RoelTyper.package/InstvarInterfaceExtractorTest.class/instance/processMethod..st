auxiliary
processMethod: aCompiledMethod
	"Fail by default. Needs to be overridden by subclasses to trigger the base testing backbone."

	| collector |
	collector := TypeCollector onClass: self class.
	collector currentExtractedMethod: aCompiledMethod.
	TypeCollector new newExtractor
		extractInterfacesFrom: aCompiledMethod
		addTo: collector.
	^collector