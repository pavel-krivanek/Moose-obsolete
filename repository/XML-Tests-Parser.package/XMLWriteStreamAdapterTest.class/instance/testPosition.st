tests
testPosition
	| adapter startPosition position |

	adapter := self newStreamAdapter.
	startPosition := adapter position. "1 or 0 depending on the stream on GS"
	position := startPosition.
	self inputCollection do: [:each |
		adapter nextPut: each.
		self assert: adapter position > position.
		position := adapter position].

	adapter position: startPosition.
	self assert: adapter position = startPosition.