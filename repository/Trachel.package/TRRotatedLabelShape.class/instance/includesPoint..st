testing
includesPoint: aPoint
	| w h p rec wh |
	w := self notRotatedWidth.
	h := self notRotatedHeight.
	wh := (w/2)@(h/2).
	p := TRPlatform current affineTransformClass new 
		rotateByDegrees: angle value negated; 
		transform: aPoint - self position.
	rec:= wh negated corner: wh.
	
	^ rec containsPoint: p.