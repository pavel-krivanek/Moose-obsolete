tests
testOn
	| stream adapter |

	stream := self newStream.
	adapter := self newStreamAdapterOn: stream.
	self
		assert: adapter class == self streamAdapterClass;
		assert: adapter stream == stream.