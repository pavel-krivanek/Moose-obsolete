class initialization
initializeContentStringNonEntityEscapes
	"Like ContentStringEscapes, but allows entity references.
	Use an array instead of a dictionary for speed, and assign
	after with #yourself to avoid possible race conditions
	when reinitializing the class."
	ContentStringNonEntityEscapes :=
		ContentStringEscapes copy
			at: $& asciiValue put: nil;
			yourself