public
toExtent: toExtent during: numberOfSeconds on: anElement
	element := anElement.
	originalExtent := anElement extent.
	
	animatedValue := TRVIAnimatedValue new
									evaluator: [ :t | originalExtent interpolateTo: toExtent at: t ];
									timer: (TRVITimer new cycleLength: numberOfSeconds);
									yourself.
	