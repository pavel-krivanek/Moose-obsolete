as yet unclassified
testComment8cr
		super testComment8cr.
		self assert: result class equals: PJTraditionalCommentsNode .
		self assert: (result comment) equals: ''.

	"Created: / 21-04-2015 / 17:08:31 / Jan Vrany <jan.vrany@fit.cvut.cz>"