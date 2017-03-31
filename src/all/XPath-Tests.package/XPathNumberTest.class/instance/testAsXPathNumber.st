tests
testAsXPathNumber
	| number |

	number := 1.0.
	self assert: number asXPathNumber == number.

	"should convert to float"
	number := 1.
	self
		assert: number asXPathNumber = number;
		assert: number asXPathNumber isFloat.