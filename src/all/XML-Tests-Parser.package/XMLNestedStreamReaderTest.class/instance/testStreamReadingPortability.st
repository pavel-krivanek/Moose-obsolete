tests
testStreamReadingPortability
	| streamReader stream output lastPeek lastNext |

	stream := XMLExceptionRaisingReadStream on: self sourceXML.
	streamReader := self newStreamReaderOn: stream.
	output := String new writeStream.
	self
		shouldnt: [
			self normalizedSourceXML size timesRepeat: [
				output nextPut:
					(streamReader
						peek;
						next)].
			lastPeek := streamReader peek.
			lastNext := streamReader next]
		raise: Error.
	self
		assert: output contents = self normalizedSourceXML;
		assert: lastPeek isNil;
		assert: lastNext isNil;
		assert: streamReader atEnd.

	self assert: stream wasClosed.
	self should: [stream atEnd] raise: Error.
	self should: [stream peek] raise: Error.
	self should: [stream next] raise: Error.