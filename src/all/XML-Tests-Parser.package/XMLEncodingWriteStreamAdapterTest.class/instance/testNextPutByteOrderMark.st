tests
testNextPutByteOrderMark
	| adapter |

	adapter := self newStreamAdapter.
	self
		assert: adapter nextPutByteOrderMark == adapter;
		assert: adapter contents = self streamConverterClass byteOrderMark.