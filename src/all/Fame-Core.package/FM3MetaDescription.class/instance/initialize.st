initialize-release
initialize

	attributes := FMMultivalueLink on: self opposite: #mmClass:.
	package := nil.
	isAbstract := false.
	superclass := FM3 object. FM3 note: 'Not sure if this is valid, maybe, superclass must be nil?'.
	subclasses := FMMultivalueLink on: self opposite: #superclass:.
