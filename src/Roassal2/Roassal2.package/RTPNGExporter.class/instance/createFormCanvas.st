util
createFormCanvas
	"Return a new form"
	| form |
	form := TRPlatform current formCanvasClass extent: self viewExtent.
	form fillRectangle: self encompassingRectangle color: self trachelCanvas color.
	^ form