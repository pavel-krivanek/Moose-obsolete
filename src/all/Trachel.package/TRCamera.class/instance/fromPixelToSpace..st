convertion
fromPixelToSpace: aPoint

	^ TRPlatform current affineTransformClass new
		translateBy: self position;
		scaleBy: 1 / self scale;
		translateBy: (self canvas extent / 2) negated;
		transform: aPoint