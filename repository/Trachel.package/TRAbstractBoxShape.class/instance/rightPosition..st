public
rightPosition: aPosition
	"Move the shape by locating its center right position at aPosition"
	self position: (aPosition - ((self width / 2) @ 0))