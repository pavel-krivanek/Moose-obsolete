tests
testStreamPushbackPortability
	| streamReader output lastPeek lastNext |

	streamReader := self newStreamReaderOn: '' readStream.
	streamReader
		pushBackStream:
			(XMLExceptionRaisingReadStream on: self sourceXML)
		whenPoppedDo: nil
		isExternal: true.
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