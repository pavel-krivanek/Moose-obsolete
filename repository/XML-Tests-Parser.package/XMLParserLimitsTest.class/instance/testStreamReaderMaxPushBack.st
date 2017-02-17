tests
testStreamReaderMaxPushBack
	| streamReader |

	streamReader := XMLNestedStreamReader on: '' readStream.
	self
		shouldnt: [
			streamReader maxNestedStreams
				timesRepeat: [streamReader pushBack: 'test']]
		raise: XMLLimitException.
	self
		should: [streamReader pushBack: 'test']
		raise: XMLLimitException.