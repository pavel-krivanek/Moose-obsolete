utilities
assert: aParser parse: aParserObject toToken: aStartInteger stop: aStopInteger end: anEndInteger
	| token |
	token := self
		assert: aParser
		parse: aParserObject
		to: nil
		end: anEndInteger.
	self assert: (token isKindOf: PPToken).
	self assert: token start equals: aStartInteger.
	self assert: token stop equals: aStopInteger.
	^ token