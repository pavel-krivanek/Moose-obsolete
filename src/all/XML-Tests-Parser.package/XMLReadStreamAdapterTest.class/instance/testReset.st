tests
testReset
	| adapter |

	adapter := self newStreamAdapter.
	self
		assert: adapter upToEnd = self outputCollection;
		assert: adapter upToEnd isEmpty;
		assert: adapter reset == adapter;
		assert: adapter upToEnd = self outputCollection;
		assert: adapter upToEnd isEmpty.