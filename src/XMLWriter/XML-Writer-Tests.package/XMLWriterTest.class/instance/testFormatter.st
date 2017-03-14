tests
testFormatter
	| writer formatter |

	writer := XMLWriter new.
	self assert: writer formatter isNil.

	formatter := XMLPrettyPrintingWriterFormatter new.
	self
		assert: (writer formatter: formatter) == writer;
		assert: writer formatter == formatter;
		assert: formatter writer == writer.

	self
		assert: (writer formatter: nil) == writer;
		assert: writer formatter isNil.