comparing
hash
	| hash|

	hash := self species hash.
	self size > 10
		ifFalse: [
			self do: [:each |
				hash := hash bitXor: each hash]].
	^ hash bitXor: self size hash.