reading
readStreamDo: aBlock
	"evaluates aBlock with a file read stream with decoding and automatically
	closes it after"

	| readStream |

	readStream := self readStream.
	^ [aBlock value: readStream]
		ensure: [readStream close].