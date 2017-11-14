accessing
defaultState
	^ DefaultState ifNil: [ DefaultState := MooseMemoryEfficientState ]