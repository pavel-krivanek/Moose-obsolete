tests
testHasColumnNumber
	| exception |

	exception := self newException.
	self deny: exception hasColumnNumber.
	
	exception columnNumber: self columnNumber.
	self assert: exception hasColumnNumber.

	exception columnNumber: nil.
	self deny: exception hasColumnNumber.