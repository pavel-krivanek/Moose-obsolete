initialize-release
initialize
	super initialize.
	twin := nil.
	talisman := nil.
	kills := FMMultiMultivalueLink on: self opposite: #killedBy.