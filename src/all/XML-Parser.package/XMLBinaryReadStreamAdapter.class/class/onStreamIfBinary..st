instance creation
onStreamIfBinary: aStream
	"consider any stream that returns ints to be binary, because not every
	stream implements isBinary and it isn't portable to GS"
	(aStream atEnd not
		and: [aStream peek isInteger])
		ifTrue: [^ self on: aStream]
		ifFalse: [^ aStream]