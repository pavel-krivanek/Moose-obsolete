private
hasNextAfterPoppingStreamsAtEnd
	"always pop at least one stream, which makes the new current stream
	the null stream if there aren't any nested streams"
	self popCurrentStream.
	[stream atEnd]
		whileTrue: [
			nestedStreams size > 0
				ifFalse: [^ false].
			self popCurrentStream].
	^ true.