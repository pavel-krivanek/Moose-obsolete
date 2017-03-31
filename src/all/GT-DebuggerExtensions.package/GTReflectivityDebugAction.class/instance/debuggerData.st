accessing
debuggerData

	^ debuggerData ifNil: [ debuggerData := Dictionary new ]