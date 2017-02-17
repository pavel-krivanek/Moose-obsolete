private
freeCanvas

	view := self buildWidget.
	canvas := view setUpCanvas.
	widget extent: canvas extent.

	widget canvas: canvas.