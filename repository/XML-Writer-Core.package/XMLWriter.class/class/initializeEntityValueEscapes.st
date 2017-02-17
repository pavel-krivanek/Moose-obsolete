class initialization
initializeEntityValueEscapes
	"use an array instead of a dictionary for speed, and
	assign after with #yourself to avoid possible race
	conditions when reinitializing the class"
	EntityValueEscapes :=
		(Array new: 255)
			at: $" asciiValue put: '&#34;';
			at: $% asciiValue put: '&#37;';
			at: Character cr asciiValue put: #LineBreak;
			at: Character lf asciiValue put: #LineBreak;
			yourself