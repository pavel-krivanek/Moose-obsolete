tests
testSpace
	| adapter |

	adapter := self newStreamAdapter.
	self
		assert: adapter space = Character space;
		assert: adapter contents = (self contentsFromCharacter: Character space).