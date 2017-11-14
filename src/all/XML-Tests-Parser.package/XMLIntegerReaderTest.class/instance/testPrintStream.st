tests
testPrintStream
	| printStream reader |

	printStream := String new writeStream.
	(reader := XMLIntegerReader on: (self newStreamOn: '123xABChdefO11'))
		printStream: printStream.
	self
		assert: (reader nextIntegerWithBase: 10) = 123;
		assert: printStream contents = '123';
		assert: (reader nextIntegerWithBase: 16 andPrefixes: 'x' orBase: 10) = 2748;
		assert: printStream contents = '123xABC';
		assert: (reader nextIntegerWithBase: 16 andPrefixes: 'h' orBase: 10) = 3567;
		assert: printStream contents = '123xABChdef'.

	reader printStream: nil.
	self
		assert: (reader nextIntegerWithBase: 8 andPrefixes: 'oO' orBase: 10) = 9;
		assert: printStream contents = '123xABChdef';
		assert: reader atEnd.