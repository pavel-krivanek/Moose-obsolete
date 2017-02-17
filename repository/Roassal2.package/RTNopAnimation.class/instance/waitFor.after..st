waiting-specific
waitFor: seconds after: aBlock
	animatedValue := TRVIAnimatedValue new
							evaluator: [ :t | ];
							finishCallback: aBlock;
							timer: (TRVITimer new cycleLength: seconds);
							yourself.
	