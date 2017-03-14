testing-literals
testStringLiteral1
		super testStringLiteral1.
		self assert: result class equals: PJStringLiteralNode.
		self assert: result literalValue equals: (String new:0)

	"Modified: / 21-04-2015 / 15:53:26 / Jan Vrany <jan.vrany@fit.cvut.cz>"