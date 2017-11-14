tests
testHasLineNumber
	| exception |

	exception := self newException.
	self deny: exception hasLineNumber.
	
	exception lineNumber: self lineNumber.
	self assert: exception hasLineNumber.

	exception lineNumber: nil.
	self deny: exception hasLineNumber.