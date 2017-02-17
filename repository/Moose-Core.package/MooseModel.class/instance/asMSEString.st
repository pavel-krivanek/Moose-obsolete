actions
asMSEString
	| stream |
	stream := (String new: 1024) writeStream.
	self exportToMSEStream: stream.
	^ stream contents