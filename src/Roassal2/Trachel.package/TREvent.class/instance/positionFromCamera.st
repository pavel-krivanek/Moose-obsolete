accessing
positionFromCamera
	"Return the position from the camera. I.e., 0 @ 0 is at the center of the window if the camera has not been translated"
	^ canvas 
		ifNotNil: [ canvas camera fromPixelToSpace: self position ]
		ifNil: [ -250 @ -250 ]
