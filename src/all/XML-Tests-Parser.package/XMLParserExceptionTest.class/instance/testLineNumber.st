tests
testLineNumber
	| exception |

	exception := self newException.
	self
		assert: exception lineNumber isNil;
		assert: (exception lineNumber: self lineNumber) == exception;
		assert: exception lineNumber = self lineNumber.