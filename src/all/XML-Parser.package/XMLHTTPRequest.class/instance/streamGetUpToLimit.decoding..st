retrieving
streamGetUpToLimit: aMaxSize decoding: aBoolean
	"must be implemented using getUpToLimit:decoding: rather than the other
	way around like XMLFileHandle does, because HTTP responses must be read
	immediately and stored entirely in memory, unlike a file stream which
	can safely be left open and read from incrementally"
	^ (self
		getUpToLimit: aMaxSize
		decoding: aBoolean) readStream