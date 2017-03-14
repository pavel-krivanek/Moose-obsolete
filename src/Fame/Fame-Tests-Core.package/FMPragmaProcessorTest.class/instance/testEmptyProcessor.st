running
testEmptyProcessor
	| processor |
	processor := FMPragmaProcessor new.
	"An empty processor knows all primitives, but does not contain them as elements!"
	processor elements size should = 0