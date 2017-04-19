class initialization
initializeContentStringDefaultEscapes
	"use an array instead of a dictionary for speed, and
	assign after with #yourself to avoid possible race
	conditions when reinitializing the class"
	ContentStringDefaultEscapes :=
		(Array new: 255)
			at: $& asciiValue put: '&amp;';
			at: $< asciiValue put: '&lt;'; "< is not allowed in attr values, but > is"
			at: $" asciiValue put: '&quot;';
			at: Character cr asciiValue put: #LineBreak;
			at: Character lf asciiValue put: #LineBreak;
			yourself