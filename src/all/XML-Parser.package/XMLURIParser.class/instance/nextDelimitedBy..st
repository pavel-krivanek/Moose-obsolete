private
nextDelimitedBy: aCollection
	writeStream reset.
	[self atEnd
		or: [aCollection includes: self peek]]
		whileFalse: [writeStream nextPut: self next].
	^ writeStream contents.