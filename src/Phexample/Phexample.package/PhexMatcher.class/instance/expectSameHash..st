private
expectSameHash: expected
	receiver hash = expected hash ifFalse: [
		TestFailure signal: ('expected same hash for <1p> and <2p> (using hash implied by =)'
			expandMacrosWith: receiver
			with: expected) ].
	^nil