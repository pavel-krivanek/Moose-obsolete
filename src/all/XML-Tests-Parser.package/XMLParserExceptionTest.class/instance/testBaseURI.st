tests
testBaseURI
	| exception |

	exception := self newException.
	self
		assert: exception baseURI = '';
		assert: (exception baseURI: self baseURI) == exception;
		assert: exception baseURI = self baseURI.