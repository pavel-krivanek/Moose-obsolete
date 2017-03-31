accessing
nextPushedBackToken
	self peekPushedBackToken
		ifNil: [^ nil]
		ifNotNil: [:token |
			self position: self position + token value size.
			^ token]