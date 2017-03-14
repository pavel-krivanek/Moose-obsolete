private
fromCameraSpaceToOurSpace: aPoint
	"To convert our boundaries from the camera space into our space (0@0 at center, no zoom)."

	^ TRPlatform current affineTransformClass new
		scaleBy: canvas camera scale;
		translateBy: canvas camera position negated;
		transform: aPoint