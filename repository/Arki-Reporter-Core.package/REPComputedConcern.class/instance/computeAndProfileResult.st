accessing
computeAndProfileResult
	| computedResult |
	computationTime := Time millisecondsToRun: [ 
		computedResult := self computeResult ].
	^ computedResult 