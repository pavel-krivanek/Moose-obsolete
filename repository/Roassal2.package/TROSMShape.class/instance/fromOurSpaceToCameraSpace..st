private
fromOurSpaceToCameraSpace: aPoint
	"To convert our boundaries into the camera space."

	^ TRPlatform current affineTransformClass new
		translateBy: canvas camera position;
		scaleBy: 1 / canvas camera scale;
		transform: aPoint