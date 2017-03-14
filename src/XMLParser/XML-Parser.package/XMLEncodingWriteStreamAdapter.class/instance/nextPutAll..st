accessing
nextPutAll: aCollection
	"to:do: for speed"
	1 to: aCollection size do: [:i |
		streamConverter
			nextPut: (aCollection at: i)
			toStream: self].
	^ aCollection.