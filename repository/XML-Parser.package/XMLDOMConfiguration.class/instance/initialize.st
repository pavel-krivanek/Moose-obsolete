initialization
initialize
	super initialize.

	"always used, so explicitly initialized"
	preservesCDataNodes := false.
	preservesCommentNodes := false.
	preservesIgnorableWhitespace := false.
	nodeFactory := self defaultNodeFactoryClass new.