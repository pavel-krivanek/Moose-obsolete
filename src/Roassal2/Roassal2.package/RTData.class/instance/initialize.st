initialization
initialize
	"Maybe this can be lazily done"

	super initialize.
	elements := #().
	self stack.
	self y: #yourself.
	self resetMinAndMax.
	self resetShapeBuilderForDot.
	self resetShapeBuilderForBar.
	self resetShapeBuilderForLine.
	self resetInteractionBuilder.
	shouldConnect := false.
	shouldHaveBars := false.
