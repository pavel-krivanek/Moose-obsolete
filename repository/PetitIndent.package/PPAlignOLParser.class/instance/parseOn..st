parsing
parseOn: context
	"default value for indent stack is 1"
	((context indentStack topIfEmpty: 1) = context column) ifFalse: [  
		^ PPFailure message: 'Not aligned' context: context
	].
	^ #aligned