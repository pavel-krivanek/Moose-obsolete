convertion
fromSpaceToPixel: aPoint

	^ TRPlatform current affineTransformClass new
		translateBy: self canvas extent / 2;
		scaleBy: self scale;
		translateBy: self position negated;
		transform: aPoint
	