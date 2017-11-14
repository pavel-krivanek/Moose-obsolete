tests
testPeekFor
	| adapter |

	adapter := self newStreamAdapterOnQualifiedName.
	self qualifiedName do: [:each |
		self
			deny: (adapter peekFor: #absent);
			deny: (adapter peekFor: nil);
			assert: (adapter peekFor: each);
			deny: (adapter peekFor: #absent);
			deny: (adapter peekFor: nil)].
	self
		deny: (adapter peekFor: #absent);
		deny: (adapter peekFor: nil).