class initialization
initializeContentNonEntityEscapes
	"Like ContentEscapes, but allows entity references.
	Use an array instead of a dictionary for speed, and assign
	after with #yourself to avoid possible race conditions
	when reinitializing the class."
	ContentNonEntityEscapes :=
		ContentEscapes copy
			at: $& asciiValue put: nil;
			yourself