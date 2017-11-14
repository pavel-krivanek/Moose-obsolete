tests
testColumnNumber
	| exception |

	exception := self newException.
	self
		assert: exception columnNumber isNil;
		assert: (exception columnNumber: self columnNumber) == exception;
		assert: exception columnNumber = self columnNumber.