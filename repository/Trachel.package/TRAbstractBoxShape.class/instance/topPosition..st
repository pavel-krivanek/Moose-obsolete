public
topPosition: aPosition
	"Move the shape by locating its center top position at aPosition"
	self position: (aPosition - (0 @ (self height / -2)))