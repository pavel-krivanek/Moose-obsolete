public
leftPosition: aPosition
	"Move the shape by locating its center left position at aPosition"
	self position: (aPosition - ((self width / -2) @ 0))