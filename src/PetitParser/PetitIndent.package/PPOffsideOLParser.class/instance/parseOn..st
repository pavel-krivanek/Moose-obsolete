parsing
parseOn: context
	(context column < (context indentStack topIfEmpty: 1)) ifFalse: [  
		^ PPFailure message: 'Not in offside' context: context
	].
	^ #offside