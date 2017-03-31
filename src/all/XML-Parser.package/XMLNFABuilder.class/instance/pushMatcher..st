building
pushMatcher: aMatcher
	| firstState |

	firstState := XMLNFAMatchingState matcher: aMatcher.
	self pushFragment:
		(XMLNFAFragment
			firstState: firstState
			terminalState: firstState).