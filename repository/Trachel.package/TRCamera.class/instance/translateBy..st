actions
translateBy: aPoint
	"Move the camera using a step"
	position := position + aPoint.
	self triggerCallbacksForStep: aPoint