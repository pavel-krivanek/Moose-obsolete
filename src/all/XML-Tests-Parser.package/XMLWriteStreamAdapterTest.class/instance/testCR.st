tests
testCR
	| adapter |

	adapter := self newStreamAdapter.
	self
		assert: adapter cr = Character cr;
		assert: adapter contents = (self contentsFromCharacter: Character cr).