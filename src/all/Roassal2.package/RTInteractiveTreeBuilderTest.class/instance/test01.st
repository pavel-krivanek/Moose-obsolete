tests
test01
	"the basic test"
	| b |
	b := RTInteractiveTreeBuilder new.
	b explore: String using: #subclasses.
	b build.