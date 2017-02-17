tests
testUpTo
	self outputCollection do: [:each | | adapter |
		adapter := self newStreamAdapter.
		self assert:
			(adapter upTo: each) =
				(self outputCollection copyUpTo: each).
		self assert:
			adapter upToEnd =
				(self outputCollection copyAfter: each)].
	self assert: (self newStreamAdapter upTo: #absent) = self outputCollection.