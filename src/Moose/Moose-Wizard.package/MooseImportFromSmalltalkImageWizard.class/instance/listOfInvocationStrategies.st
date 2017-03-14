accessing
listOfInvocationStrategies
	
	^ { 'Do not compute any candidate'. 
		'Use the standard CandidateListOperator'. 
		'Compute for simple receivers ("self" "super" or a Class ) '.
		'Compute for simple receivers and variables'.
		'Compute for any kind of receiver' }