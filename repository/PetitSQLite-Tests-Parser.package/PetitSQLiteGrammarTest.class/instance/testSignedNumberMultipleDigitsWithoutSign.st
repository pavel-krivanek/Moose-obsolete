tests
testSignedNumberMultipleDigitsWithoutSign

	self 
		parse: ' 3558 '
		rule: #signedNumber.
