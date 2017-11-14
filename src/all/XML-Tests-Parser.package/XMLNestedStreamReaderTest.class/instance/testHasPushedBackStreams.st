tests
testHasPushedBackStreams
	| streamReader |

	streamReader := self newStreamReaderOnSourceXML.
	self deny: streamReader hasPushedBackStreams.

	streamReader pushBackStream: (self newStreamOn: '').
	self assert: streamReader hasPushedBackStreams.

	streamReader next.
	self deny: streamReader hasPushedBackStreams.