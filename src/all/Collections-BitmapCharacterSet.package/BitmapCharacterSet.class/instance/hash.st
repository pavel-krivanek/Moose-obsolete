comparing
hash
	| hash |

	hash := self species hash.
	self byteCharactersDo: [:each |
		hash := hash bitXor: each hash].
	^ hash bitXor: self size hash.