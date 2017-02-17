testing-lineTerminators
testLineTerminator3

		self
				parse: (Character codePoint: 13) asString , (Character codePoint: 10) asString
				rule: #lineTerminator

	"Modified: / 21-04-2015 / 15:47:19 / Jan Vrany <jan.vrany@fit.cvut.cz>"