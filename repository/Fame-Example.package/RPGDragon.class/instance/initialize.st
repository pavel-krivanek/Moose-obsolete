initialize-release
initialize
	super initialize.
	hoard := FMMultivalueLink on: self opposite: #keeper:.
	killedBy := FMMultiMultivalueLink on: self opposite: #kills.