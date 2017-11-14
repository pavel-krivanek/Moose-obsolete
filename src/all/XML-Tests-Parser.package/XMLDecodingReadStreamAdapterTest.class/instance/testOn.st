tests
testOn
	| stream adapter |

	super testOn.

	stream := self newStreamOn: #(1).
	adapter := self newStreamAdapterOn: stream.
	self
		assert: adapter class == self streamAdapterClass;
		assert: adapter stream class == XMLBinaryReadStreamAdapter;
		assert: adapter stream stream == stream.