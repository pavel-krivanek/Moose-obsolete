initialize-release
initialize
	super initialize.
	self isPackage: true.
	childNamedEntities := FMNullMultivalueLink on: self opposite: #parentPackage: selector: #childNamedEntities.