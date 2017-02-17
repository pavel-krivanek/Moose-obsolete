invoking
function
	"use findString:startingAt: for portability"
	^ (self firstArgument
		findString: self lastArgument
		startingAt: 1) > 0