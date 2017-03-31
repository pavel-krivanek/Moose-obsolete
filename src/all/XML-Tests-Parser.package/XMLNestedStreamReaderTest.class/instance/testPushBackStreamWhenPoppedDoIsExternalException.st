tests
testPushBackStreamWhenPoppedDoIsExternalException
	"ensure that throwing an exception from the callback doesn't stop
	the stream from being closed or getting popped"

	| stream streamReader evaluated |

	stream := XMLExceptionRaisingReadStream on: self sourceXML.
	streamReader := self newStreamReaderOnSourceXML.
	evaluated := false.
	streamReader
		pushBackStream: stream
		whenPoppedDo: [
			evaluated := true.
			Error signal]
		isExternal: true.
	self
		assert: streamReader stream == stream;
		deny: evaluated;
		deny: stream wasClosed.

	self
		should: [streamReader upToEnd]
		raise: Error.
	self
		deny: streamReader stream == stream;
		assert: evaluated;
		assert: stream wasClosed.