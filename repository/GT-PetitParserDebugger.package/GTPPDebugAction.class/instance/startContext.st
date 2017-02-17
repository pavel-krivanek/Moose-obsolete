accessing
startContext

	^ startContext ifNil: [ self currentContext ]