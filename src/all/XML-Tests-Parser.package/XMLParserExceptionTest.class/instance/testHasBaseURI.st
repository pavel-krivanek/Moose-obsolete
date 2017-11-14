tests
testHasBaseURI
	| exception |

	exception := self newException.
	self deny: exception hasBaseURI.
	
	exception baseURI: self baseURI.
	self assert: exception hasBaseURI.

	exception baseURI: ''.
	self deny: exception hasBaseURI.