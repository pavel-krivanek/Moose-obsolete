hooks
createShapeBuilder
	^ ((RTBox new height: 20; width: 200; color: #color) + (RTLabel new text: #itemName))
	"| b |
	b := super createShapeBuilder.
	b rectangle width: 250; height: 20; color: #color.
	^ b"