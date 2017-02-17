tests
testReset
	| adapter startPosition |

	adapter := self newStreamAdapter.
	startPosition := adapter position. "1 or 0 depending on the stream on GS"
	adapter
		next;
		peek.
	self
		assert: adapter reset == adapter;
		assert: adapter position = startPosition;
		"use #= because wide chars aren't #== pre-Spur"
		assert: adapter peek = self outputCollection first;
		assert: adapter next = self outputCollection first.