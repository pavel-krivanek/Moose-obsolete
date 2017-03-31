tests
testSkip
	| adapter |

	0 to: self outputCollection size do: [:i |
		adapter := self newStreamAdapter.
		self
			assert: (adapter skip: i) == adapter;
			assert: adapter upToEnd = (self outputCollection allButFirst: i)].

	adapter := self newStreamAdapter.
	self
		assert: (adapter skip: self outputCollection size + 1) == adapter;
		assert: adapter upToEnd isEmpty.