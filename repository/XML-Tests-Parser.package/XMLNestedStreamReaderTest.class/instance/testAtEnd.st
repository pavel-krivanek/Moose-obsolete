tests
testAtEnd
	| streamReader |

	streamReader := self newStreamReaderOnSourceXML.
	self normalizedSourceXML size timesRepeat: [
		self deny: streamReader atEnd.
		streamReader next].
	self
		assert: streamReader atEnd;
		assert: streamReader stream atEnd.

	streamReader pushBack: self normalizedSourceXML.
	self normalizedSourceXML size timesRepeat: [
		self deny: streamReader atEnd.
		streamReader next].
	self
		assert: streamReader atEnd;
		assert: streamReader stream atEnd.

	streamReader pushBack: ''.
	self
		assert: streamReader atEnd;
		assert: streamReader stream atEnd.