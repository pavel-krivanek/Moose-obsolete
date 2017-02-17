writing
writeStreamDo: aBlock
	"evaluates aBlock with a file write stream with encoding and
	automatically closes it after; truncates existing files"

	| writeStream |

	writeStream := self writeStream.
	^ [aBlock value: writeStream]
		ensure: [writeStream close].