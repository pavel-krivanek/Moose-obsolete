statements-elements
signedNumber
	^($+ asPParser trim / $- asPParser trim ) optional , ( floatingPointLiteral / integerLiteral ) trim