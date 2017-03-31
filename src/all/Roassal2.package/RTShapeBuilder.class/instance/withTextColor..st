shapes - texting
withTextColor: aColorOrABlock
	"Set the color of the text. Should be used only with a composite Shape"
	self assert: [ shape class == RTCompositeShape ] description: 'This method should be used only if a text has been added to a box or an ellipse'.
	(shape shapesInstancesOf: RTLabel) do: [ :l | l color: aColorOrABlock ]