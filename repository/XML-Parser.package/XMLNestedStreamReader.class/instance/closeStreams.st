closing
closeStreams
	"close the streams but do not evaluate their callbacks and
	set the current stream to the null stream sending #closeStreams
	again won't raise an error"
	self
		closeStream: stream;
		setStreamToNull.
	[nestedStreams size > 0]
		whileTrue: [self closeStream: nestedStreams removeLast stream].