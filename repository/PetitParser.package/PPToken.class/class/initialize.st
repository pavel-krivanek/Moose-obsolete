initialization
initialize
	"Platform independent newline sequence. LF: Unix, CR+LF: Windows, and CR: Apple."
	| cr lf |
	cr := Character codePoint: 13.
	lf := Character codePoint: 10.
	NewLineParser := lf asParser / (cr asParser , lf asParser optional)