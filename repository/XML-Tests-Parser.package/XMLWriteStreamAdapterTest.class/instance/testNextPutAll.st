tests
testNextPutAll
	| adapter |

	adapter := self newStreamAdapter.
	self
		assert: (adapter nextPutAll: self inputCollection) = self inputCollection;
		assert: adapter contents = self outputCollection.