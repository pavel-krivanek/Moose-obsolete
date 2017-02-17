instance creation
fromStream: aStream
	"streams must be parsed eagerly (because the stream might be read from
	or closed after), unlike strings"
	^ self basicNew initialize parseURIStream: aStream