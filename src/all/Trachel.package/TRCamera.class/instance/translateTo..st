actions
translateTo: newPosition
	"Move the camera to a new position. Note that some callbacks may be triggered"
	| step |
	step := newPosition - position.
	position := newPosition.
	self triggerCallbacksForStep: step.