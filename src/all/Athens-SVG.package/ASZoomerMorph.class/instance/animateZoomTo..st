as yet unclassified
animateZoomTo: zoomLevel


	targetZoom := zoomLevel.
	animStartZoom := currentZoom.

	currentAnimation := ASAnimation new subject: self.
	currentAnimation stopCondition: [:anim | anim duration >= self maxAnimationDuration ].
	currentAnimation stepAction:  [:anim | | duration |
		duration := (anim duration min: self maxAnimationDuration) / self maxAnimationDuration asFloat.
		
		self setZoom:  animStartZoom * (1-duration) + (targetZoom * duration).

		 ].
	currentAnimation finishAction: [:anim |
		self stopStepping.
		self setZoom: targetZoom.
		currentAnimation := nil.
		].
	
	currentAnimation start.
	self startStepping