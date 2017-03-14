private
seconds: seconds
	animatedValue := TRVIAnimatedValue new
		evaluator: [ :t | t ];
		timer: (TRVITimer new cycleLength: seconds);
		yourself.
	

