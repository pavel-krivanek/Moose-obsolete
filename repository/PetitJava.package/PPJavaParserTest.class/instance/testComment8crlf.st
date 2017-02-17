as yet unclassified
testComment8crlf
		super testComment8crlf.
		self assert: result class equals: PJTraditionalCommentsNode .
		self assert: (result comment) equals: ''.

	"Created: / 21-04-2015 / 17:08:37 / Jan Vrany <jan.vrany@fit.cvut.cz>"