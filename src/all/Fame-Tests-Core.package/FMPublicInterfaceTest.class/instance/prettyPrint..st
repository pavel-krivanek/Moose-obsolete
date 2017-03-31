private
prettyPrint: array

	| stream |
	stream := String new writeStream.
	stream tab; nextPut: $#; nextPut: $(; cr. 
	array do: [ :each |
		stream tab; nextPut: $(; nextPutAll: each first; space; nextPut: $(.
		each second do: [ :sel | stream nextPutAll: sel; space ].
		stream nextPut: $); space; nextPut: $(; cr.
		each third do: [ :sel |
			stream tab; tab; nextPutAll: sel; cr ].
		stream tab; nextPut: $); nextPut: $); cr. ].
	stream tab; nextPut: $); cr.
	^stream contents.
	