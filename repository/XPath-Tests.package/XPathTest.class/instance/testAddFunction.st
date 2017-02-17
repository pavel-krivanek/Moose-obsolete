tests
testAddFunction
	| path functionsWithoutCeiling context |

	path := XPath for: 'ceiling(1.9)'.

	functionsWithoutCeiling :=
		self functionSetClass default copyWithout:
			XPathCeilingFunction.
	context := self contextClass functions: functionsWithoutCeiling.
	self deny: (context includesFunction: XPathCeilingFunction).
	self
		should: [
			path
				in: nil
				context: context]
		raise: XPathUndeclaredFunctionException.

	(context := self contextClass functions: functionsWithoutCeiling)
		addFunction: XPathCeilingFunction.
	self assert: (context includesFunction: XPathCeilingFunction).
	"adding should modify an internal copy, not the original"
	self deny: (functionsWithoutCeiling includes: XPathCeilingFunction).
	self assert:
		(path
			in: nil
			context: context) = 2.