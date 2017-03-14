tests
testMetricsAreNotComputedPerDefault
	"Metrics are not computed per default. This means that the state of each element remains empty"
	
	self assert: (famixClass privateState propertyAt: #weightedMethodCount ifAbsent: [nil]) isNil.
	self assert: (famixClass methods allSatisfy: [:m | (m privateState propertyAt: #weightedMethodCount ifAbsent: [nil]) isNil])