*Roassal2GT-Spotter
spotterActDefault
	"This method define the action when an element is selected in the spotter window"
	self view canvas camera translateTo: self position.
	RTBlink on: self.