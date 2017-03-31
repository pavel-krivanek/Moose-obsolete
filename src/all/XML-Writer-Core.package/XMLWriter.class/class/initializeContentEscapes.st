class initialization
initializeContentEscapes
	"use an array instead of a dictionary for speed, and
	assign after with #yourself to avoid possible race
	conditions when reinitializing the class"
	ContentEscapes :=
		(Array new: 255)
			at: $& asciiValue put: '&amp;';
			at: $< asciiValue put: '&lt;';
			at: $> asciiValue put: '&gt;'; "required to escape ]]> in PCDATA"
			at: Character cr asciiValue put: #LineBreak;
			at: Character lf asciiValue put: #LineBreak;
			yourself