tests
testPosition
	| adapter startPosition position |

	adapter := self newStreamAdapter.
	startPosition := adapter position. "1 or 0 depending on the stream on GS"
	position := startPosition.
	self outputCollection do: [:each |
		self
			assert: adapter position = position;
			"use #= because wide chars aren't #== pre-Spur"
			assert: adapter peek = each;
			assert: adapter position = position;
			assert: adapter next = each;
			assert: adapter position > position.
		
		adapter peek.
		self
			assert: (adapter position: position) == adapter;
			assert: adapter peek = each;
			assert: adapter position = position;
			assert: adapter next = each;
			assert: adapter position > position.
		position := adapter position].
	self assert: position = (startPosition + self inputCollection size).