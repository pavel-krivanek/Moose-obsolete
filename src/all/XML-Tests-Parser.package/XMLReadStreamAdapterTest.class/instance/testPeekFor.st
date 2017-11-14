tests
testPeekFor
	| adapter |

	adapter := self newStreamAdapter.
	self outputCollection do: [:each |
		self
			deny: (adapter peekFor: #absent);
			deny: (adapter peekFor: nil);
			assert: (adapter peekFor: each);
			deny: (adapter peekFor: #absent);
			deny: (adapter peekFor: nil)].
	self
		deny: (adapter peekFor: #absent);
		deny: (adapter peekFor: nil).