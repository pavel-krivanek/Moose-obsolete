tests
testOnFormatter
	| stream formatter writer |

	stream := String new writeStream.
	formatter := XMLWriterRecordingFormatterProxy new.
	writer := XMLWriter on: stream formatter: formatter.
	self
		assert: writer stream == stream;
		assert: writer formatter == formatter.