class initialization
initialize
	"self initialize"

	InlinedFunctionNamesAndSelectors :=
		Dictionary new
			at: 'true' put: #emitInlinedTrueFunctionCall:;
			at: 'false' put: #emitInlinedFalseFunctionCall:;
			at: 'position' put: #emitInlinedPositionFunctionCall:;
			at: 'last' put: #emitInlinedLastFunctionCall:;
			yourself