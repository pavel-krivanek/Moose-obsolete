testing
hash
	^ (self class hash
		bitXor: self bookName hash)
			bitXor: self title hash