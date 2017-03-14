as yet unclassified
testComment8lf
		super testComment8lf.
		self assert: result class equals: PJTraditionalCommentsNode .
		self assert: (result comment) equals: ''.

	"Created: / 21-04-2015 / 17:08:44 / Jan Vrany <jan.vrany@fit.cvut.cz>"