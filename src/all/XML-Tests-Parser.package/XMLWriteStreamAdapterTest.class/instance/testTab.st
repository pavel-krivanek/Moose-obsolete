tests
testTab
	| adapter |

	adapter := self newStreamAdapter.
	self
		assert: adapter tab = Character tab;
		assert: adapter contents = (self contentsFromCharacter: Character tab).