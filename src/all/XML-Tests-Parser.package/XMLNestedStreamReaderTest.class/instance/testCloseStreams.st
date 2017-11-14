tests
testCloseStreams
	| stream streamReader pushedBackStream evaluated |

	stream := self newStreamOnSourceXML.
	streamReader := self newStreamReaderOn: stream.

	pushedBackStream := self newStreamOnSourceXML.
	evaluated := false.
	streamReader
		pushBackStream: pushedBackStream
		whenPoppedDo: [evaluated := true]
		isExternal: true.
	self
		assert: streamReader stream == pushedBackStream;
		assert: streamReader hasPushedBackStreams;
		deny: stream wasClosed;
		deny: pushedBackStream wasClosed.

	self
		assert: streamReader closeStreams == streamReader;
		assert: streamReader atEnd;
		deny: streamReader stream == stream;
		deny: streamReader stream == pushedBackStream;
		deny: streamReader hasPushedBackStreams;
		assert: stream wasClosed;
		assert: pushedBackStream wasClosed;
		deny: evaluated.

	self
		shouldnt: [streamReader closeStreams]
		raise: Error.