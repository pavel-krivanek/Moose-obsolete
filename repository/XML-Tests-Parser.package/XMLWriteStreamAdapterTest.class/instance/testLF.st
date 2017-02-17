tests
testLF
	| adapter |

	adapter := self newStreamAdapter.
	self
		assert: adapter lf = Character lf;
		assert: adapter contents = (self contentsFromCharacter: Character lf).