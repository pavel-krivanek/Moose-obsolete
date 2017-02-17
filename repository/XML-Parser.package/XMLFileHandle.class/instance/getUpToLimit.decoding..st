retrieving
getUpToLimit: aMaxSize decoding: aBoolean
	| stream contents |

	"can be safely implemented using streamGetUpToLimit:decoding: rather
	than the other way around like XMLHTTPRequest requires, because files
	are local and can be safely read incrementally, unlike an HTTP response
	which must be read immediately and stored entirely in memory"
	stream :=
		self
			streamGetUpToLimit: aMaxSize
			decoding: aBoolean.
	contents := stream upToEnd.
	stream close.

	^ contents.