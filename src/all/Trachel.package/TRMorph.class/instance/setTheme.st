initialization
setTheme
	"his method infers the theme to use and modify the canvas"
	self assert: [ trachelCanvas notNil ] description: 'Need to have a Trachel canvas'.
	trachelCanvas theme: self inferCurrentTheme.
	^ trachelCanvas theme