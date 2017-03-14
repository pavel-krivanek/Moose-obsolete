accessing
setInfoOn: famixMethod withSource: sourceAsString
	"sourceAsString is the source code of famixMethod"

	| visitor |
	visitor := MonticelloMethodVisitor on: self.
	visitor 
			runWithSource: sourceAsString
			and: famixMethod 