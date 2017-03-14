waiting-specific
waitFor: seconds
	animatedValue := TRVIAnimatedValue new
							evaluator: [ :t | blockToExecute value ];
							timer: (TRVITimer new cycleLength: seconds);
							yourself.
	