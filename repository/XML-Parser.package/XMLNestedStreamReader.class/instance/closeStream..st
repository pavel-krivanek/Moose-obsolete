private
closeStream: aStream
	"must use respondsTo: to support streams only implementing the basic protocol"
	(aStream respondsTo: #close)
		ifTrue: [aStream close].