comparing
hash
	^ (position hash bitXor: stream hash) bitXor: properties hash.