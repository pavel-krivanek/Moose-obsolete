tests
testEnablePlatformSpecificLineBreak
	| writer |

	writer := XMLWriter new.
	self
		assert: writer enablePlatformSpecificLineBreak == writer;
		assert: writer lineBreak = XMLWriter platformSpecificLineBreak.