tests
testSkipTo
	| adapter |

	self outputCollection do: [:each |
		adapter := self newStreamAdapter.
		self
			assert: (adapter skipTo: each);
			assert: adapter upToEnd = (self outputCollection copyAfter: each)].

	adapter := self newStreamAdapter.
	self
		deny: (adapter skipTo: #absent);
		assert: adapter atEnd.