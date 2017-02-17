private
shapeForEvent: evt
	^ self shapeWithActionForPositionInPixels: (canvas camera fromSpaceToPixel: evt position).