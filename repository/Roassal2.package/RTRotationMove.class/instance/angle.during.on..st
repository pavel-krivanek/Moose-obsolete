public
angle: anAngle during: seconds on: anElement
	|currentAngle|
	element := anElement.
	currentAngle := element trachelShape angleInDegrees.
	animatedValue := TRVIAnimatedValue new
							evaluator: [ :t | currentAngle interpolateTo: anAngle at: t ];
							timer: (TRVITimer new cycleLength: seconds);
							yourself.