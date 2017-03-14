tests
testPeekFor
	| adapter |

	adapter := self newStreamAdapter.
	self outputCollection do: [:each |
		self
			deny: (adapter peekFor: #absent);
			assert: (adapter peekFor: each);
			deny: (adapter peekFor: #absent)].
	self deny: (adapter peekFor: #absent).