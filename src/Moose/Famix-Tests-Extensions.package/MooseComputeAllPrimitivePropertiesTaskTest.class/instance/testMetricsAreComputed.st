tests
testMetricsAreComputed
	"We run the task, the metrics are computed therefore, this is relfected in the property"
	
	MooseComputeAllPrimitivePropertiesTask runOnModel: model.

	self assert: (famixClass propertyNamed: #numberOfLinesOfCode) notNil.
	self assert: (famixClass methods allSatisfy: [:m | (m propertyNamed: #numberOfLinesOfCode) notNil])