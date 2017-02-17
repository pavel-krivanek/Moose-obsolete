private
nestedStreamsAddLast: aPushedBackStream
	nestedStreams size >= self maxNestedStreams
		ifTrue: [self errorNestingLimitExceeded].
	nestedStreams addLast: aPushedBackStream.