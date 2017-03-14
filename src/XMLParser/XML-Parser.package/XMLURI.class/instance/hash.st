comparing
hash
	^ (self species hash bitXor: self host hash)
		bitXor: self pathSegments hash