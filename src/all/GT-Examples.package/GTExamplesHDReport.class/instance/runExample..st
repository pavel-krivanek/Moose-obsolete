running
runExample: anExample
	| error stack  |
	self
		beginExample: anExample
		runBlock: [ 
			[ anExample debug ]
				on: Halt, Error, AssertionFailure
				do: [ :err |
					error := err.
					self
						serializeError: error
						of: anExample.
					stack := self
						stackTraceString: err
						of: anExample ] ].
	self
		writeError: error
		andStack: stack
		for: anExample.
	self endExample