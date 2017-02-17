testing
includesSubstring: aStringOrStringNode
	"avoid String>>includesSubstring: for backwards compatibility"
	^ aStringOrStringNode isEmpty
		or: [(self indexOfSubstring: aStringOrStringNode) > 0]