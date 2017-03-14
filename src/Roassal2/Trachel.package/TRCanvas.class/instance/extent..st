accessing
extent: newExtentAsPoint
	"Set of the size of the canvas. Useful, for example, when the window is resized"
	| evt |
	evt := TRResizeCanvasEvent new.
	evt oldExtent: extent.
	evt newExtent: newExtentAsPoint.
	extent := newExtentAsPoint.
	self announce: evt