tests
testOnStreamIfBinary
	| stream adapter |

	stream := self newStreamOn: '1'.
	self assert: (self streamAdapterClass onStreamIfBinary: stream) == stream.

	stream next.
	self assert: (self streamAdapterClass onStreamIfBinary: stream) == stream.

	stream := self newStreamOn: #(1).
	adapter := self streamAdapterClass onStreamIfBinary: stream.
	self
		assert: adapter class == self streamAdapterClass;
		assert: adapter hasDefaultStreamConverter.

	stream next.
	self assert: (self streamAdapterClass onStreamIfBinary: stream) == stream.