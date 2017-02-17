public
to: anEndPoint during: seconds on: anElement
	| position |
	element := anElement.
	
	position := anElement position.
	animatedValue := TRVIAnimatedValue new
							evaluator: [ :t | position interpolateTo: anEndPoint at: t ];
							timer: (TRVITimer new cycleLength: seconds);
							yourself.
	