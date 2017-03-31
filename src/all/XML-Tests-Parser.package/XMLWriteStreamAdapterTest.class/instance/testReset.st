tests
testReset
	| adapter startPosition |

	adapter := self newStreamAdapter.
	startPosition := adapter position. "1 or 0 depending on the stream on GS"
	adapter nextPutAll: self inputCollection.
	self
		assert: adapter reset == adapter;
		assert: adapter position = startPosition.