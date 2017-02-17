public
on: view during: seconds
	| initialScale |
	initialScale := view canvas camera scale.
	trachelCanvas := view canvas.
	animatedValue := TRVIAnimatedValue new
							evaluator: [ :t | initialScale interpolateTo: (initialScale * self step ) at: t ];
							timer: (TRVITimer new cycleLength: seconds);
							yourself.
	

