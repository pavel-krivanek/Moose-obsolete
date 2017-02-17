primitives
number
	^ ($- asParser optional , #digit asParser) and , [ :context | 
		[ (NumberParser on: context stream) nextNumber ] 
			on: Error
			do: [ :err | PPFailure message: err messageText at: context position ] ] 
				asParser