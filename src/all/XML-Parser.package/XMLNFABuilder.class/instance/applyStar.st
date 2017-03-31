building
applyStar
	| branchState starFragment |

	starFragment := self popFragment.
	branchState := XMLNFABranchingState branch: starFragment firstState.
	starFragment connectToState: branchState.

	self pushFragment:
		(XMLNFAFragment
			firstState: branchState
			terminalState: branchState)